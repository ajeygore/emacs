(setq load-path (cons  "~/.emacs.d/packages/growl" load-path))
(require 'growl)
;; need a smarter check than finished. like differentiate between rpec / other compilation modes
(defun growl-a-bit(buffer string)
	(cond ((string-match "finished" string)
		(growl "yoo" "hoo"))
		(0 (growl "some" "insult"))))

(add-hook 'compilation-finish-functions 'growl-a-bit)