(define (domain uefi)
   (:constants RuntimeServicesGetAccessVariable WRITE READ READ_MAGIC zero one ScanMemoryForKey BobKey RngProtocol_Addr ptrRngProtocol56397 ptrRngProtocol RuntimeServicesSetAccessVariable CopyMem GenerateAccessKey Lockpin)
   (:predicates (api_call ?c)
		(fcall ?c)
		(farg ?c ?n ?v)
		(key_permissions ?k ?p)
        (key ?k)
		(efi_var ?v)
        (write_primitive ?func ?argn)
	    (points_to ?v ?p)
		(points_to_const ?p ?v))

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
            (farg ScanMemoryForKey one READ_MAGIC)
        )
       :effect 
        (key BobKey))

    (:action every_key_can_read
       :parameters (?k)
       :precondition 
        (key ?k)
       :effect 
        (key_permissions ?k READ))

    (:action bug_turn_read_key_to_write
       :parameters (?k)
       :precondition 
        (and (key ?k) (key_permissions ?k READ) )
       :effect 
        (key_permissions ?k WRITE))

    (:action use_bob_key_to_find_rng_ptr
       :parameters (?k)
       :precondition 
        (key BobKey)
       :effect 
        (and (points_to RngProtocol_Addr ptrRngProtocol56397)
        (points_to_const ptrRngProtocol56397 ptrRngProtocol)
        ))
    
    (:action call_set_access_variable
       :parameters  (?k ?val ?ptr ?var)
       :precondition 
        (and 
            (fcall RuntimeServicesSetAccessVariable) 
            (farg RuntimeServicesGetAccessVariable zero ?var)
            (farg RuntimeServicesGetAccessVariable one ?val)
            (efi_var ?var)
            (key_permissions ?k WRITE) 
            (points_to ?var ?ptr)
        )
       :effect 
        (points_to_const ?ptr ?val))

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
