;;;; ECB

(load-file "~/.emacs.d/include/cedet-1.0.1/common/cedet.el")
;;(global-ede-mode 1)                      ; Enable the Project management system
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;;(global-srecode-minor-mode 1)            ; Enable template insertion menu

(add-to-list 'load-path "~/.emacs.d/include/ecb-snap")
(require 'ecb)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-auto-activate t)
 '(ecb-auto-compatibility-check nil)
 '(ecb-layout-name "ecb-layout-directories.methods")
 '(ecb-show-sources-in-directories-buffer (quote always))
 '(ecb-source-path (quote ("~/")))
 '(ecb-tip-of-the-day nil)
 '(ecb-version-check nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;;; ECB end

;;;; MOUSECONF

(global-set-key [mouse-4] 'scroll-down-one)
(global-set-key [mouse-5] 'scroll-up-one)
(defun scroll-up-one () (interactive) (scroll-up 1))
(defun scroll-down-one () (interactive) (scroll-down 1))

(windmove-default-keybindings)

(setq mouse-autoselect-window t)

;;;; MOUSECONF end

;;;; INTERFACE

(scroll-bar-mode)
(tool-bar-mode)

(add-to-list 'load-path "~/.emacs.d/include/color-theme-6.6.0/")
(require 'color-theme)

(add-to-list 'load-path "~/.emacs.d/themes/")

(require 'sweyla858470)
(sweyla858470)

;;;; INTERFACE end