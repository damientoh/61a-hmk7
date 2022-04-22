(define (cadr lst) (car (cdr lst)))

(define (make-kwlist1 keys values)
  (cons keys (cons values nil))
)

(define (get-keys-kwlist1 kwlist)
  (car kwlist)
)

(define (get-values-kwlist1 kwlist)
  (cadr kwlist)
)

(define (make-kwlist2 keys values)
  (if (null? keys)
    nil
  (cons
    (cons (car keys) (cons (car values) nil))
    (make-kwlist2 (cdr keys) (cdr values))
  )
  )
)

(define (get-keys-kwlist2 kwlist)
  (if (null? kwlist)
    nil
    (cons (car (car kwlist)) (get-keys-kwlist2 (cdr kwlist)))
  )
)

(define (get-values-kwlist2 kwlist)
  (if (null? kwlist)
    nil
    (cons (cadr (car kwlist)) (get-values-kwlist2 (cdr kwlist)))
  )
)

(define (add-to-kwlist kwlist key value)
  'YOUR-CODE-HERE)

(define (get-first-from-kwlist kwlist key)
  'YOUR-CODE-HERE)

(define (prune-expr expr)
  (define (prune-helper lst) 'YOUR-CODE-HERE)
  'YOUR-CODE-HERE)

(define (curry-cook formals body) 'YOUR-CODE-HERE)

(define (curry-consume curries args)
  'YOUR-CODE-HERE)
