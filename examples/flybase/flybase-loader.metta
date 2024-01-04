;;  Load the VSPACE python space

;; to start in MeTTaLog use    ./MeTTa 8-FlybaseQuestions.metta --repl

!(extend-py! metta_vspace.metta_learner)

!(fb-info!)

!(pwd!)
;; MeTTaLog only:
!(ensure-loaded! ../../data/whole_flybase_2)

!(fb-info!)



