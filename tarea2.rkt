#lang racket
(require graphics/turtles)
(define (tree_symme n a)
  (when (> n 1)
    (draw n)
    (tprompt (split* (turn a) (turn (* a -1)))
             (tree_symme (- n 3)a))
))

(define (tree_asymme n a)
  (when (> n 1)
    (draw (+ n 6))
    (turn a )    
    (tprompt
      (tree_symme n a)
      ) (turn (* a -2))
    (tree_asymme (- n 6)a))
  
)
(turtles #t) (move -100) (turn 90) (move -300)
(tree_symme 35 40)
(turtles #t) (turn 0) (move 300)
(tree_asymme 35 40)

