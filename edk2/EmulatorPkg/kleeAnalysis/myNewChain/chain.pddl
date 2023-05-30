(define (problem chainingV2)
   (:domain uefiFactsSEV2)
   (:objects bobKey aliceKey invalidKey - key
   result - variable
)
   (:init (api_call Demo1ValidateAccessKey)
   (api_call mineSetVariable)
   (points_to_const alice_mode zero)
   ;(keychain aliceKey)
          )
   (:goal (points_to_const alice_mode two)))