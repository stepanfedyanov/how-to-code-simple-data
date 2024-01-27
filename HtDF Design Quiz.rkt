;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF Design Quiz|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image, Image -> Boolean
;; produce true if first image larger (area of image bigger than) than the second image, false if the second image large than the first image
(check-expect (img-larger? (rectangle 10 10 "solid" "red")
                           (rectangle 20 20 "solid" "red"))
              false)
(check-expect (img-larger? (rectangle 12 15 "solid" "red")
                           (rectangle 20 2 "solid" "red"))
              true)
(check-expect (img-larger? (rectangle 40 30 "solid" "red")
                           (rectangle 120 10 "solid" "red"))
              false)

;(define (img-larger? img1 img2) true) ;stub
;(define (img-larger? img img2)        ;template
;  (... img1 img2))

(define (img-larger? img1 img2)
  (> (* (image-width img1) (image-height img1))
     (* (image-width img2) (image-height img2))))