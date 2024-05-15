(defpackage <name>/tests/main
  (:use :cl
   :<name>
        :rove))
(in-package :<anme>/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :bloog)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
