(defmacro increase-length (step)
  `(let* ((in-start (- i max-length ,step -1))
          (sub (subseq s in-start (+ i 1))))
     (when (string= sub (reverse sub))
       (incf max-length ,step)
       (setf start in-start))))

(defun longest-palindrome (s)
  (let ((size (length s))
        (start 0)
        (max-length 1))
    (if ((string= s (reverse s))
         (return-from longest-palindrome s)))
    (loop for i from 1 below size do
         (if (null (if (>= (- i max-length 1) 0)
                       (increase-length 2)))
             (increase-length 1)))
    (subseq s start (+ start max-length))))
