
(import srfi-1 srfi-69)    
(import amb amb-extras)    
(import matchable)         
(import (chicken flonum))  
(import (chicken type))    





(define-syntax collapse
  (syntax-rules ()
    ((_ args)
     (filter (lambda (x) (not (== x (if #f 42))))
             (amb-collect (handle-exceptions exn ((amb-failure-continuation)) args))))))



(define-syntax superpose-helper
  (syntax-rules (superpose)
    ((_ (superpose (argi ...)))
     (amb (superpose-helper argi) ...))
    ((_ arg)
     (auto-list1 arg))))

(define-syntax superpose
  (syntax-rules ()
    ((_ (argi ...))
     (amb (superpose-helper argi) ...))
    ((_ args)
     (amb1 (superpose-helper args)))))






(define functions (make-hash-table))





(define-syntax =
  (syntax-rules ()
    ((_ (name patterni ...) body)
     (begin
       (hash-table-set! vars '&self (cons '(=def (name patterni ...) body) (hash-table-ref vars '&self)))
       (let ((function (match-lambda* ((patterni ...) (auto-list1 body)))))
            (if (hash-table-exists? functions 'name)
                (hash-table-set! functions 'name (cons function (hash-table-ref functions 'name)))
                (hash-table-set! functions 'name (list function))))
       (set! name (lambda args (handle-exceptions exn ((amb-failure-continuation))
                          (apply (amb1 (hash-table-ref functions 'name)) args))))))))





(define-syntax Let
  (syntax-rules ()
    ((_ var val body)
     (match-let* ((var (auto-list1 val))) (auto-list1 body)))))


(define-syntax Let*
  (syntax-rules ()
    ((_ ((vari vali) ...) body)
     (match-let* ((vari (auto-list1 vali)) ...) (auto-list1 body)))
    ((_ (((vari1 vari2) vali) ...) body)
     (match-let* (((vari1 vari2) (auto-list1 vali)) ...) (auto-list1 body)))))





(define-syntax If
  (syntax-rules ()
    ((_ condition thenbody elsebody)
        (if condition (auto-list1 thenbody) (auto-list1 elsebody)))
    ((_ condition thenbody)
        (if condition (auto-list1 thenbody) ((amb-failure-continuation))))))




(define-syntax Case
  (syntax-rules (%void%)
    ((_ var ((%void% voidcase)))
     (if (eq? 0 (length (amb-collect (auto-list1 var)))) (auto-list1 voidcase) ((amb-failure-continuation))))
    ((_ var ((pati bodi) ... (%void% voidcase)))
     (let ((options (amb-collect (handle-exceptions exn ((amb-failure-continuation))
                                                    (match (auto-list1 var) (pati (auto-list1 bodi)) ...)))))
          (if (eq? 0 (length options))
              (auto-list1 voidcase) (amb1 options))))
    ((_ var ((pati bodi) ...))
     (handle-exceptions exn ((amb-failure-continuation))
                        (match (auto-list1 var) (pati (auto-list1 bodi)) ...)))))





(define (print-helper xs)
  (display "[")
  (define (print-items xs)
    (cond
      ((null? xs)
       (display "]")
       (newline))
      (else
       (display (car xs))
       (if (not (null? (cdr xs)))
           (display ", "))
       (print-items (cdr xs)))))
  (print-items xs))


(define-syntax !
  (syntax-rules ()
    ((_ argi ...)
     (print-helper (amb-collect (auto-list argi ...))))))







(define-syntax metta-macro-if
  (syntax-rules (collapse superpose Let Let* Match Case If == sequential quote do trace! and or)
    ((_ collapse then else) then)
    ((_ superpose then else) then)
    ((_ Let then else) then)
    ((_ Let* then else) then)
    ((_ Match then else) then)
    ((_ Case then else) then)
    ((_ If then else) then)
    ((_ == then else) then)
    ((_ sequential then else) then)
    ((_ quote then else) then)
    ((_ do then else) then)
    ((_ trace! then else) then)
    ((_ and then else) then)
    ((_ or then else) then)
    ((_ arg then else) else)))


(define-syntax auto-list-helper
  (syntax-rules ()
    ((_ expr1 ()) 
     (list expr1))
    ((_ (expr1i ...) argi ...) 
     (list (auto-list expr1i ...) (auto-list1 argi) ...))
    ((_ expr1 argi ...)
     (if (procedure? expr1)
         (apply expr1 (list (auto-list1 argi) ...))
         (list (auto-list1 expr1) (auto-list1 argi) ...)))))


(define-syntax auto-list
  (syntax-rules ()
    ((_ expr)
     (list (auto-list1 expr)))
    ((_ expr1 expri ...)
     (metta-macro-if expr1
         (expr1 expri ...)
         (auto-list-helper expr1 expri ...)))))


(define-syntax auto-list1
   (syntax-rules ()
    ((_ (vari ...))
     (auto-list vari ...))
    ((_ var1)
     var1)))





(define == equal?)





(define-type Atom *)
(define-type %Undefined% *)
(define-type Symbol symbol)
(define-type Expression list)
(define-type Bool boolean)
(define-type Number number)
(define-type String string)


(define-syntax Typedef
  (syntax-rules ()
    ((_ arg (-> A ... B))
     (cond-expand
       (USE_TYPES (: arg (A ... -> B))) (else '())))
    ((_ arg1 arg2)
     (cond-expand
       (USE_TYPES (define-type arg1 arg2)) (else '())))))





(define vars (make-hash-table))
(hash-table-set! vars '&self '())


(define (new-space s) s)
(define (new-state s) s)
(define (get-state s) s)


(define (get-atoms space) (amb1 (hash-table-ref vars space)))


(define (bind! var val)
  (begin (hash-table-set! vars var val) '()))


(define (add-atom space atom)
  (begin (hash-table-set! vars space (cons atom (hash-table-ref vars space))) '()))


(define (remove-atom space atom)
  (begin (hash-table-set! vars space (delete atom (hash-table-ref vars space))) '()))


(define (change-state! var val)
  (begin (hash-table-set! vars var val) (list 'State val)))


(define (get-state var)
  (hash-table-ref vars var))


(define-syntax Match
  (syntax-rules (MatchChain)
    ((_ space (MatchChain bind1 bind2) result)
     (Match space bind1 (Match space bind2 result)))
    ((_ space (MatchChain bind1 bindi ...) result)
     (Match space bind1 (Match space (MatchChain bindi ...) result)))
    ((_ space binds result)
     (handle-exceptions exn ((amb-failure-continuation))
                        (match-let* ((binds (amb1 (hash-table-ref vars space)))) (auto-list1 result))))))





(define-syntax sequential-helper
  (syntax-rules (do)
    ((_ (do expr))
     expr)
    ((_ expr)
     (set! ret (append ret (list expr))))))


(define-syntax sequential
  (syntax-rules ()
    ((_ arg)
     (superpose arg))))


(define-syntax do
  (syntax-rules ()
    ((_ arg)
     (begin (auto-list1 arg) (If #f 42)))))





(define-syntax trace!
  (syntax-rules ()
    ((_ x y)
     (begin (display (auto-list1 x)) (newline) (auto-list1 y)))))

;__METTACODE__:
(= (f $x) 42)

(! Let $y (superpose (3 4 5))
      (If (> $y 3)
          (Case (1 $y) (((1 3) (f 0))
                        ((1 4) (42 42))
                       ($else (1 1))))))

