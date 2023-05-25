(define (domain uefi)  
  (:predicates
    (within-range ?addr - address)
    (non-null ?ptr - dest)
  )
  
  ; Define actions
  (:action scan-memory
    :parameters
      (?addr - address
       ?dest - dest
       ?size - number)
    :precondition
      (and
        ; Check if address is within range
        (within-range ?addr)
        ; Check if destination pointer is valid
        (non-null ?dest)
      )
    :effect
      (and
        ; Copy data from address to destination
        (copy-data ?addr ?dest ?size)
      )
  )
)
