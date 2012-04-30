(defun sciamp-select-current-line ()
  (interactive)
  (beginning-of-line)
  (push-mark (point))
  (end-of-line)
  (setq mark-active t))

(provide 'sciamp-utils)