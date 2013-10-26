(require 'term+)
(require 'term+mux)
;; this configuration on environment.el
;; (setq shell-file-name (or (executable-find "zsh") (executable-find "bash")))
(setq explicit-shell-file-name shell-file-name)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; write `export TERM=xterm-256color` on ~/.zshrc 
(setq system-uses-terminfo nil)

(global-set-key (kbd "C-c t")
		'(lambda () (interactive) (term+mux-new)))
