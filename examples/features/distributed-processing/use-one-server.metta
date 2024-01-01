


!(bind! &ps1 (process-create! (bash) (:: -c "MeTTa server1-with-some-data.metta server1-with-some-data.metta -G \'(create-vspace-server 3021)\')")) ())

!(process-kill! &ps1)

!(assertEqualToResult
  (remote-eval "localhost:3021"
   (match &self
    (, ($obj is $prop)
       ($prop is-a Color)
       ($obj is-a Planet))
    (Color of Planet $obj is $prop))
  ((Color of Planet Mars is Red)))



