(define (problem exploit-chain-x1)
   (:domain uefi)
   (:objects ptrLockpin78694 ALICE_MODE ptrGlobal49804 RUN_MODE ATTACKER)
   (:init (api_call RuntimeServicesGetAccessVariable)
          (api_call RuntimeServicesSetAccessVariable)
          (api_call GenerateAccessKey)
          (api_call ScanMemoryForKey)
          (points_to Lockpin ptrLockpin78694)
          (points_to_const ptrLockpin78694 one)
          (efi_var ALICE_MODE)
          (points_to ALICE_MODE ptrGlobal49804)
          (points_to_const ptrGlobal49804 RUN_MODE)
          (write_primitive CopyMem zero)
        ; (in_key_chain BobKey)
         ;(not(not_in_key_chain BobKey))
          )
   (:goal (key_permissions ATTACKER WRITE)))
