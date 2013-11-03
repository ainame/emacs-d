(defun newline-or-open-line ()
  "newline-or-openline is a new command for merging C-m and C-o"
  (interactive)
  (let ((string-exists-before-cursor (string-match "[^\\\s\\\n\\\t]" (buffer-substring (point-at-bol) (point))))
        (string-exists-after-cursor (string-match "[^\\\s\\\n\\\t]" (buffer-substring (point) (point-at-eol)))))
    (cond ((or (eolp)
               (not string-exists-after-cursor)
               (and string-exists-before-cursor string-exists-after-cursor))
	   (progn (newline) (indent-according-to-mode)))
          (t (progn (open-line 1) (indent-according-to-mode))))))

(define-key global-map (kbd "C-m") 'newline-or-open-line)
