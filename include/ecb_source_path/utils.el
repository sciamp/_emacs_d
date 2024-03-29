(defun reset-base-source-path (path)
  "Change ecb-source-path"
  (interactive "DEnter new base dir: ")
  (setq ecb-source-path nil)
  (add-to-list 'ecb-source-path path)
  (ecb-update-directories-buffer))

(defun add-base-source-path (path)
  "Add another ecb-source-path"
  (interactive "DEnter new base dir: ")
  (add-to-list 'ecb-source-path path)
  (ecb-update-directories-buffer))

(provide 'utils)