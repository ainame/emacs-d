(defun newline-or-open-line ()
  "newline-or-openline is a new command for merging C-m and C-o"
  (interactive)
  (cond ((bolp) (progn (open-line 1) (indent-according-to-mode)))
	((eolp) (newline))
	(t (progn (open-line 1) (indent-according-to-mode)))))
(define-key global-map (kbd "C-m") 'newline-or-open-line)
