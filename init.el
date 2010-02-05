(setq load-path (cons "~/.emacs.d" load-path))
(setq load-path (cons "~/.emacs.d/packages" load-path))
(load-file "~/.emacs.d/custom.el")
(if (eq system-type 'darwin)
    (setq system-name (car (split-string system-name "\\."))))
(load-file "~/.emacs.d/paths.el")

(defun packages-path()
	"packages path"
	"~/.emacs.d/packages/")

(defun packages(names)
	(mapcar (lambda (name) (concat (packages-path) name)) names))

;; Enable/ Disable by commenting out lines
(mapcar
 (lambda(package)
	 (load-file (concat package ".el"))) 
 (packages '( 
"distel-init"
"ecb-init"
"magit-init"
"yas-init"
"rinari-init"
"rspec-init"
"textmate-init"
"haml-init"
"yaml-init"
;;"twit-el-init"
"clojure-init"
"haskell-init"
;;"php-mode"
"linum-init"
"markdown-init"
"js2-init"
"color-theme-init"
"inkpot-init"
"zen-init"
"highlight-current-line"
"growl-init"
"dvc-init"
"espresso-init"
;;"twilight-init"
;;"zenburn-init"
)))
(load "~/.emacs.d/packages/nxhtml/autostart.el")


;; Default Loads 
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'ido)
(org-mode)
(color-theme-zen-and-art)
(put 'dired-find-alternate-file 'disabled nil)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-compilation-buffer-names (quote (("*vc*") ("*vc-diff*") ("*Apropos*") ("*eshell*") ("*Occur*") ("*shell*" . t) ("\\*[cC]ompilation.*\\*" . t) ("\\*i?grep.*\\*" . t) ("*Help*") ("*Completions*") ("*Backtrace*") ("*Compile-log*") ("*Messages*") ("*magit: " . t))))
 '(ecb-compile-window-height 6)
 '(ecb-compile-window-width (quote frame))
 '(ecb-layout-name "left7")
 '(ecb-maximize-ecb-window-after-selection t)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-indent 3)
 '(ecb-vc-enable-support t)
 '(ecb-windows-width 0.2)
 '(linum-format "%4d ")
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
 
(ecb-toggle-ecb-windows)
(put 'set-goal-column 'disabled nil)
