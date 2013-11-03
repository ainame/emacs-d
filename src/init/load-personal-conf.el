(when (file-directory-p personal-dir)
  (mapc (lambda (f) (ignore-errors (load f)))
	(directory-files personal-dir 't "^[^#].*elc$")))

(provide 'my-setup/load-personal-conf)
