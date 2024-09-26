(defun merge-88 (nums1 m nums2 n)
  (loop while (and (plusp m)
                   (plusp n))
     do (if (>= (nth (1- m) nums1)
                (nth (1- n) nums2))
            ;; setf 从左到右运算，先执行 decf 操作
            (setf (nth (+ (decf m) n) nums1) (nth m nums1))
            (setf (nth (+ m (decf n)) nums1) (nth n nums2)))
     finally (when (plusp n)
               ;; 自动忽略 nums2 中多余的部分
               (setf (subseq nums1 0 n) nums2))))

;; Test case: nums1 and nums2 are sorted arrays
(setq nums1 (list 1 2 3 nil nil nil))  ;; Placeholder with space
(setq nums2 (list 2 5 6))  ;; Sorted nums2
(merge-88 nums1 3 nums2 3)
(message "Merged list: %s" nums1)
