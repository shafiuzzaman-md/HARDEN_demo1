(define (domain uefi)
   (:requirements :negative-preconditions :typing :disjunctive-preconditions :equality)
;    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
;     key
;     function
;     permission
;     protocol
;     )
   (:constants RuntimeServicesGetAccessVariable RuntimeServicesSetAccessVariable ScanMemoryForKey GenerateAccessKey CopyMem 
   WRITE READ  
   BobKey 
   RngProtocol_Addr ptrRngProtocol56397 ptrRngProtocol 
   DEC0DEBABB1E10AD zero one 
   Lockpin)
   (:predicates (api_call ?c)
		(fcall ?c)
		(farg ?c ?n ?v)
		(key_permissions ?k ?p)
        (in_key_chain ?k)
		(efi_var ?v)
        (write_primitive ?func ?argn)
	    (points_to ?v ?p)
		(points_to_const ?p ?v)
        ;(not_in_key_chain ?k)
        ;(in_key_chain ?k)
        )

    (:action api_call
       :parameters  (?func ?argn ?argv)
       :precondition (api_call ?func) 
       :effect (and (fcall ?func) (farg ?func ?argn ?argv)))

    (:action call_copy_mem
       :parameters  (?k ?ptr ?var)
       :precondition 
        (and 
            (fcall RuntimeServicesGetAccessVariable) 
            (key_permissions ?k WRITE) 
            (efi_var ?var)
            (farg RuntimeServicesGetAccessVariable zero ?var)
        )
       :effect 
        (and 
            (fcall CopyMem) 
            (farg CopyMem zero ?var) 
            (farg CopyMem one ?ptr)
        ))

    (:action call_scan_memory
       :parameters ()
       :precondition 
        (and 
            (fcall ScanMemoryForKey) 
            (farg ScanMemoryForKey zero DEC0DEBABB1E10AD)
        )
       :effect 
        (and 
        (in_key_chain BobKey) 
        (key_permissions BobKey READ)
        (not (key_permissions BobKey WRITE))
       ))

    (:action every_key_can_read
       :parameters (?k)
       :precondition 
        (in_key_chain ?k)
       :effect 
        (key_permissions ?k READ))

    (:action bug_turn_read_key_to_write
       :parameters (?k)
       :precondition 
        (and (in_key_chain ?k) (key_permissions ?k READ) )
       :effect 
        (and (key_permissions ?k WRITE)
        (not (in_key_chain ?k))
        (not (key_permissions ?k READ))
        ;(not_in_key_chain ?k)
        ) )

    (:action use_bob_key_to_find_rng_ptr
       :parameters (?k)
       :precondition 
        (in_key_chain BobKey)
       :effect 
        (and (points_to RngProtocol_Addr ptrRngProtocol56397)
        (points_to_const ptrRngProtocol56397 ptrRngProtocol)
        ))
    
    (:action call_set_access_variable
       :parameters  (?k ?val ?ptr ?var)
       :precondition 
        (and 
            (fcall RuntimeServicesSetAccessVariable) 
            (farg RuntimeServicesSetAccessVariable zero ?var)
            (farg RuntimeServicesSetAccessVariable one ?val)
            (efi_var ?var)
            (key_permissions ?k WRITE) 
            (in_key_chain ?k)
            (points_to ?var ?ptr))
       :effect 
        (points_to_const ?ptr ?val))

    ;  (:action call_buggy_set_access_variable
    ;    :parameters  (?k ?val ?ptr ?var)
    ;    :precondition 
    ;     (and 
    ;         (fcall RuntimeServicesSetAccessVariable) 
    ;         (farg RuntimeServicesSetAccessVariable zero ?var)
    ;         (farg RuntimeServicesSetAccessVariable one ?val)
    ;         (efi_var ?var)
    ;         (key_permissions ?k WRITE) 
    ;         ; (or 
    ;         ; (in_key_chain ?k)
    ;         ; (not(in_key_chain ?k)))
    ;         (points_to ?var ?ptr))
    ;    :effect 
    ;     (points_to_const ?ptr ?val))

    (:action use_write_primitive
       :parameters  (?func ?ptrs ?ptrd ?argn ?argnn ?argv ?argvv)
       :precondition 
        (and 
            (fcall ?func)
            (write_primitive ?func ?argn)
            (farg ?func ?argn ?argv) 
            (farg ?func ?argnn ?argvv)
            (points_to ?argvv ?ptrs)
        )
       :effect 
       (points_to ?argv ?ptrs))
    
    (:action generate_new_key
       :parameters  (?ptr ?key_name)
       :precondition 
        (and 
            (fcall GenerateAccessKey) 
            (points_to Lockpin ?ptr)
            (points_to_const ?ptr zero)
        )
       :effect 
        (and (key_permissions ?key_name READ) (key_permissions ?key_name WRITE)))
)


    

   