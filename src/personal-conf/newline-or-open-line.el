(defun newline-or-open-line ()
  "newline-or-openline is a new command for merging C-m and C-o"
  (interactive)
  (cond ((or (eolp)
	     (not (string-match "[^\\\s\\\n\\\t]" (buffer-substring (point) (point-at-eol)))))
	 (progn (newline) (indent-according-to-mode)))
	(t (progn (open-line 1) (indent-according-to-mode)))))

(define-key global-map (kbd "C-m") 'newline-or-open-line)
