;;;; IDO

(require 'ido)

(ido-mode (quote both))
(setq ido-enable-flex-matching t)
(setq ido-ignore-buffers '("\\` " "\\*"))
(setq ido-ignore-files '("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./"))

;;;; IDO end

;; ;;;; ECB

;; (load-file "~/.emacs.d/include/cedet-1.0.1/common/cedet.el")
;; ;;(global-ede-mode 1)                      ; Enable the Project management system
;; ;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; ;;(global-srecode-minor-mode 1)            ; Enable template insertion menu

;; (add-to-list 'load-path "~/.emacs.d/include/ecb-snap")
;; (require 'ecb)

;; (add-to-list 'load-path "~/.emacs.d/include/ecb_source_path")
;; (require 'utils)

;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(ecb-auto-activate t)
;;  '(ecb-auto-compatibility-check nil)
;;  '(ecb-layout-name "left15")
;;  '(ecb-layout-window-sizes (quote (("left15" (ecb-directories-buffer-name 0.3273809523809524 . 0.6888888888888889) (ecb-methods-buffer-name 0.3273809523809524 . 0.28888888888888886)))))
;;  '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
;;  '(ecb-show-sources-in-directories-buffer (quote always))
;;  '(ecb-source-path (quote ("~/")))
;;  '(ecb-tip-of-the-day nil)
;;  '(ecb-version-check nil))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  )

;; ;;;; ECB end

;;;; MOUSECONF

(global-set-key [mouse-4] 'scroll-down-one)
(global-set-key [mouse-5] 'scroll-up-one)
(defun scroll-up-one () (interactive) (scroll-up 1))
(defun scroll-down-one () (interactive) (scroll-down 1))

(windmove-default-keybindings)

(setq mouse-autoselect-window t)

;;;; MOUSECONF end

;;;; INTERFACE

(scroll-bar-mode nil)
(tool-bar-mode nil)

(add-to-list 'load-path "~/.emacs.d/include/color-theme-6.6.0/")
(require 'color-theme)
(color-theme-jsc-light)
;; (add-to-list 'load-path "~/.emacs.d/themes/")

;; (require 'sweyla858470)
;; (sweyla858470)

(show-paren-mode t)

;;;; INTERFACE end

;;;; RVM

(add-to-list 'load-path "~/.emacs.d/include/rvm")
(require 'rvm)
(rvm-use-default)

;;;; RVM end

;;;; RINARI

(add-to-list 'load-path "~/.emacs.d/include/rinari")
(require 'rinari)

;;;; RINARI end

;;;; TEXTMATE

(add-to-list 'load-path "~/.emacs.d/include/textmate")
(require 'textmate)
(textmate-mode)

;;;; TEXTMATE end

;;;; RHTMLMODE

(add-to-list 'load-path "~/.emacs.d/include/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook 
	  (lambda () (rinari-launch)))

;;;; RHTMLMODE end

;;;; TABBARMODE

(add-to-list 'load-path "~/.emacs.d/include/tab-bar")
(require 'tabbar)
;; (tabbar-mode)

;;;; TABBARMODE end

;;;; AUTOCOMPLETEMODE

(add-to-list 'load-path "~/.emacs.d/include/auto-complete")
;;(add-to-list 'ac-dictionary-directory "~/.emacs.d/include/auto-complete/dict")
(require 'auto-complete-config)
;;(require 'auto-complete)
(ac-config-default)

;;;; AUTOCOMPLETEMODE end

;;;; RSENSE

;; WARNING!! you need to install rsense
;; http://cx4a.org/software/rsense/manual.html#Installation

(setq rsense-home (expand-file-name "~/Sources/rsense-0.3"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; can't find out how to have this in english!
;; (setq rsense-rurema-home "~/Sources/rsense-0.3/refm_1_9_2")

;; Complete by C-c .
;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-c .") 'ac-complete-rsense)))

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))


;;;; RSENSE end

;;;; YASNIPPET

(add-to-list 'load-path "~/.emacs.d/include/yasnippet")
(require 'yasnippet)
(setq yas/snippet-dirs 
      '("~/.emacs.d/include/yasnippet/snippets" "~/.emacs.d/include/yasnippet/extras/imported"))
(yas/global-mode 1)

;;;; YASNIPPET end

;;;; WRAP

(add-to-list 'load-path "~/.emacs.d/include/wrap-region")
(require 'wrap-region)

(wrap-region-global-mode)

;; (wrap-region-add-wrapper "$" "$")
(wrap-region-add-wrapper "{-" "-}" "#")
;; (wrap-region-add-wrapper "/" "/" nil 'ruby-mode)
;; (wrap-region-add-wrapper "/* " " */" "#" '(java-mode javascript-mode css-mode))
;; (wrap-region-add-wrapper "`" "`" nil '(markdown-mode ruby-mode))

;;;; WRAP end

;;;; SCIAMPUTILS

(add-to-list 'load-path "~/.emacs.d/include/utils")
(require 'sciamp-utils)

(global-set-key [(meta shift l)] 'sciamp-select-current-line)

(global-set-key [(control <)] 'beginning-of-line)
(global-set-key [(control >)] 'end-of-line)
(global-set-key [(control meta <)] 'beginning-of-buffer)
(global-set-key [(control meta >)] 'end-of-buffer)

;; press super after control!
;; maybe we should find some better shortcuts!
(global-set-key [(super control <)] 'sciamp-select-to-the-beginning-of-line)
(global-set-key [(super control >)] 'sciamp-select-to-the-end-of-line)
(global-set-key [(super control meta <)] 'sciamp-select-to-the-beginning-of-buffer)
(global-set-key [(super control meta >)] 'sciamp-select-to-the-end-of-buffer)

;;;; SCIAMPUTILS end

;;;; YAMLMODE

(add-to-list 'load-path "~/.emacs.d/include/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;;;; YAMLMODE end

;;;; MARKDOWNMODE

(add-to-list 'load-path "~/.emacs.d/include/markdown-mode")

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;;; MARKDOWNMODE end

;;;; DEFAULWINDOWSIZE

(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 100))

;;;; DEFAULWINDOWSIZE end

;;;; ZENCODING

(add-to-list 'load-path "~/emacs.d/inlcude/zencoding")
(require 'zencoding-mode)

;;;; ZENCODING end