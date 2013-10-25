(defvar my-migemo-dir "/usr/local/share/migemo/utf-8/migemo-dict")
(eval-after-load "term+"
  '(progn
     (setq shell-file-name (executable-find "zsh"))))

(provide 'my-setup/environment)
