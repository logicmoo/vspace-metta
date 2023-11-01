;; will only be fast enough (for our 10 second limit) if compiled anyways?
!(pragma! compiler full)


!(pragma! trace-on-fail True)
!(pragma! trace-on-pass False)
!(pragma! trace-on-error True)
!(pragma! trace-on-load False)
!(import! &self NARS.metta)
!(pragma! trace-on-load True)

!(AddBeliefEvent (((corridorIn &/ (^ forward)) =/> doorAt) (1.0 0.9)))
!(AddBeliefEvent (((windowAt &/ (^ open)) =/> Outside) (1.0 0.9)))
!(AddBeliefEvent (((doorAt &/ (^ open)) =/> Outside) (1.0 0.9)))

!(AddBeliefEvent (corridorIn (1.0 0.9)))
!(assertEqual (AddGoalEvent (Outside (1.0 0.9)))
;expected:
  None)

;needs one more goal cycle for planning 2 steps
!(GoalCycle (get-state &currentTime))

!(assertEqual (GoalCycle (get-state &currentTime))
;expected:
  (^ forward))

!(AddBeliefEvent (doorAt (1.0 0.9)))
!(assertEqual (AddGoalEvent (Outside (1.0 0.9)))
;expected:
    (^ open))
