(require 'term+)
(global-set-key (kbd "C-c t")
		'(lambda () (interactive) (multi-term)))
(setq multi-term-program "/bin/bash")

