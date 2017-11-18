(ql:quickload :hunchentoot)
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(hunchentoot:define-easy-handler (say-hello :uri "/hello") (name)
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "hello ~a! I am Eric! ~%I just built this with Lisp! " name))
