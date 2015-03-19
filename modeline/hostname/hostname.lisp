;; hostname.lisp
;;
;; Put %h in your modeline format string to show your hostname
;;

(in-package #:hostname)

(defvar *hostname* nil)

(defun fmt-hostname (ml)
  "Return hostname"
  (declare (ignore ml))
  (format nil "~a" (car (split-string (machine-instance) "."))))

;; Install formatter
(add-screen-mode-line-formatter #\h #'fmt-hostname)

