;Header and description

(define (domain uefiFactsSEV2)

;remove requirements that are not needed
;(:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)
(:requirements :negative-preconditions :typing)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
key
mode
person
function
permission
num
variable
)

; un-comment following line if constants are needed
(:constants Demo1ValidateAccessKey mineGetVariable mineSetVariable - function
zero one two - num
read write - permission
alice_mode - mode)

(:predicates
(api_call ?c)
(fcall ?c) ;Call of function
(farg ?c ?n ?v) ;Parameters of the function
(value_true ?p)
(keychain ?key)
(points_to_const ?p ?v)
)
;(:functions ;todo: define numeric functions here
;)
;define actions here
 (:action api_call
       :parameters  (?func - function ?argn ?argv)
       :precondition (api_call ?func) 
       :effect (and (fcall ?func) (farg ?func ?argn ?argv)))

;vlab : vulnerabilty 3
; (:action wrong_validation
;     :parameters (?wrongAccessKey - key ?result)
;     :precondition (and 
;         (fcall Demo1ValidateAccessKey)
;         (farg Demo1ValidateAccessKey zero ?wrongAccessKey)
;         (farg Demo1ValidateAccessKey one ?result)
;         )
;     :effect (and (value_true ?result))
; )

(:action correct_validation
    :parameters (?accessKey - key ?result)
    :precondition (and 
        (fcall Demo1ValidateAccessKey)
        (farg Demo1ValidateAccessKey zero ?accessKey)
        (farg Demo1ValidateAccessKey one ?result)
       ; (not(value_true ?result))
        (keychain ?accessKey)
        )
    :effect (and (value_true ?result))
)

;vlab : vulnerabilty 1
(:action change_AccessLockKey
    :parameters (?accessKeyLock )
    :precondition (and 
        (fcall mineGetVariable)
        (farg mineGetVariable zero ?accessKeyLock)
        (value_true ?accessKeyLock))
    :effect (and (not(value_true ?accessKeyLock)))
)

;vlab : vulnerabilty 4
; (:action set_value_with_no_write_access
;     :parameters (?key - key ?var ?val)
;     :precondition (and 
;     (fcall mineSetVariable)
;     (farg mineSetVariable zero ?key)
;     ;(not(keychain ?key))
;     (keychain ?key)
;     ;(not(points_to_const ?var ?val))
;     )
;     :effect (and (points_to_const ?var ?val))
;)

;vlab : vulnerabilty 5
(:action change_alice_mode
    :parameters (?key - key ?val ?result)
    :precondition (and 
    (fcall mineSetVariable)
    (farg mineSetVariable zero ?key)
    (fcall Demo1ValidateAccessKey)
    (farg Demo1ValidateAccessKey zero ?key)
    (fcall Demo1ValidateAccessKey)
    (farg Demo1ValidateAccessKey one ?result)
    (value_true ?result)
    ;(not(points_to_const alice_mode ?val))
    )
    :effect (and (points_to_const alice_mode ?val))
)
)
