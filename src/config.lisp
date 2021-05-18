(in-package :cl+ssl)

(defvar *libssl-override* nil)
(defvar *libcrypto-override* nil)

(defmacro define-libssl-path (path)
  `(progn
     (cffi:define-foreign-library libssl (t ,path))
     (setq *libssl-override* t)))

(defmacro define-libcrypto-path (path)
  `(progn
     (cffi:define-foreign-library libcrypto (t ,path))
     (setq *libcrypto-override* t)))
