(setq load-path (cons  "~/.emacs.d/packages/js2-mode" load-path))
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(provide 'js2-init)