(ido-mode t)
(add-to-list 'load-path "~/.emacs.d/packages/rinari")
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(require 'rinari)
(provide 'rinari-init)
