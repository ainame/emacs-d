(when (file-directory-p personal-dir)
  (mapc 'load (directory-files personal-dir 't "^[^#].*elc$")))

(provide 'my-setup/load-personal-conf)
