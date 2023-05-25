(define (domain uefi)  
  (:predicates
    (within-range ?addr - address)
    (non-null ?ptr - dest)
    (gloadimage-exists)  ; Predicate to represent the existence of gLoadImage
    (within-valid-range ?addr - address ?size - number)  ; Represents whether the address and size are within the valid range
  )
  
  ; Define actions
  (:action scan-memory
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
  
  ; Define actions
  (:action scan-memory
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

 (:action arbitrary-memory-write
  :parameters (?VariableName - string
               ?VendorGuid - guid
               ?AccessKey - object
               ?DataSize - int
               ?Data - object)
  :precondition (and
                 (not (null ?VariableName))
                 (not (null ?VendorGuid))
                 (not (null ?AccessKey))
                 (not (null ?DataSize))
                 (not (null ?Data))
                 (valid-access-key ?AccessKey) 
                 (valid-access-variable ?VariableName ?VendorGuid ?AccessKey) 
                 (= ?DataSize (data-size-of-access-variable ?VariableName ?VendorGuid)) 
                 (not (null ?Data))
                 )
                 (valid-data-size ?Data ?DataSize)
                 (= 0 (value-of-access-variable ?VariableName ?VendorGuid ?AccessKey))
  :effect (and
           (memory-write ?Data ?DataSize)
           (return-status EFI_SUCCESS)
          )
)

   
)
