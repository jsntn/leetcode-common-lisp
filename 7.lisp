(defun reverse-int (x)
  (if (>= x 0)
      (+ (parse-integer (reverse (write-to-string x))))
      (- (parse-integer (reverse (write-to-string (abs x)))))))
