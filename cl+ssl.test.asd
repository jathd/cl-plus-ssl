;;; -*- mode: lisp -*-
;;;
;;; Copyright (C) 2015 Ilya Khaprov <ilya.khaprov@publitechs.com>
;;;
;;; See LICENSE for details.

(defpackage :cl+ssl.test-system
  (:use :cl :asdf))

(in-package :cl+ssl.test-system)

(asdf:defsystem :cl+ssl.test
  :version "0.1"
  :description "CL+SSL test suite"
  :maintainer "Ilya Khaprov <ilya.khaprov@publitechs.com>"
  :author "Ilya Khaprov <ilya.khaprov@publitechs.com>"
  :licence "MIT"
  :depends-on (:fiveam :cl+ssl :cl-coveralls)
  :serial t
  :components ((:file "test/package")
               (:file "test/dummy")))
