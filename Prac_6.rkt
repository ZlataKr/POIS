#lang racket
(display  "Правило: При кол-ве книг на складе больше 7 скидка 20%")
(display  "\nВведите кол-во книг ")
(define amount (read))
(display  "Введите цену книги ")
(define price (read))
(display  "Ответ (функция)")
(define (sale price)
(if (> amount 7)
(display (* price 0.8)) price))
(sale price)

(display  "\nОтвет (let)")
(let sale ((amount price))
(if (> amount 7) 
(display (* price 0.8)) price))

(display  "\nОтвет (lambda)")
(if (> amount 7)
((lambda (price) (* price 0.8))
   price) price )