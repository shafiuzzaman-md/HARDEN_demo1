(define (domain uefi)  
  (:predicates
    (within-range ?addr - address)
    (non-null ?ptr - dest)
    (gloadimage-exists)  ; Predicate to represent the existence of gLoadImage
    (within-valid-range ?addr - address ?size - number)  ; Represents whether the address and size are within the valid range
  )
  
  ; Define actions
  (:action provide-data
    :parameters
      (?addr - address
       ?dest - dest
       ?size - number)
     :precondition
      (and
        ; Check if destination pointer is non-NULL
        (non-null ?dest)
        ; Check if gLoadImage exists
        (gloadimage-exists)
        ; Check if address and size are within the valid range of gLoadImage
        (within-valid-range ?addr ?size)
      )
    :effect
      (and
        ; Copy data from address to destination
        (copy-data ?addr ?dest ?size)
      )
  )
)
