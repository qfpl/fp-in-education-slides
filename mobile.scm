(define (make-mobile left right) (cons left right))

(define (make-branch length structure) (cons length structure))

(define left-branch car)
(define right-branch cdr)
(define branch-length car)
(define branch-structure cdr)

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (branch-weight branch)
  (let ((structure (branch-structure branch)))
    (cond ((number? structure) structure)
          (else (total-weight structure)))))

(define example
  (make-mobile (make-branch 5 (make-mobile (make-branch 10 20)
                                           (make-branch 5 40)))
               (make-branch 1 300)))

(define (balanced-mobile mobile)
  (let ((l (left-branch mobile))
        (r (right-branch mobile)))
    (and (= (branch-arm l)
            (branch-arm r))
         (balanced-branch l)
         (balanced-branch r))))

(define (branch-arm branch)
  (* (branch-length branch) (branch-weight branch)))

(define (balanced-branch branch)
  (let ((structure (branch-structure branch)))
    (or (number? structure)
        (balanced-mobile structure))))
