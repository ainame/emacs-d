(require 'cl-lib)

(defvar newline-or-open-line/open-line-count 0)
(make-variable-buffer-local 'newline-or-open-line/open-line-count)

(defun newline-or-open-line/increment-open-line ()
  (setq newline-or-open-line/open-line-count (+ newline-or-open-line/open-line-count 1)))

(defun newline-or-open-line/clear-open-line-count ()
  (setq newline-or-open-line/open-line-count 0))

(defun newline-or-open-line/post-command-hook ()
  (if (not (eq last-command-event 13))
      (newline-or-open-line/clear-open-line-count)
    nil))

(add-hook 'post-command-hook 'newline-or-open-line/post-command-hook)

(defun newline-or-open-line ()
  "newline-or-openline is a new command for merging C-m and C-o"
  (interactive)
  (let ((string-exists-before-cursor (string-match "[^\\\s\\\n\\\t]" (buffer-substring (point-at-bol) (point))))
        (string-exists-after-cursor (string-match "[^\\\s\\\n\\\t]" (buffer-substring (point) (point-at-eol)))))
    (cond ((or (and (eq newline-or-open-line/open-line-count 0)
                    (eolp))
               (and (>= newline-or-open-line/open-line-count 2)
                    (or (not string-exists-after-cursor)
                        (and string-exists-before-cursor string-exists-after-cursor)))
               (and (eq newline-or-open-line/open-line-count 0)
                    (and string-exists-before-cursor string-exists-after-cursor)))
           (progn
             (newline)
             (indent-according-to-mode)
             (newline-or-open-line/clear-open-line-count)))
          (t (progn
               (open-line 1)
               (indent-according-to-mode)
               (save-excursion
                 (forward-line)
                 (indent-according-to-mode)
                 (previous-line))
               (newline-or-open-line/increment-open-line))))))

(define-key global-map (kbd "C-m") 'newline-or-open-line)

(provide 'newline-or-open-line)
