(global-git-gutter-mode t)
(setq git-gutter:separator-sign "|")
(set-face-foreground 'git-gutter:separator "yellow")
(define-key global-map (kbd "C-x v =") 'git-gutter:popup-hunk)
(define-key global-map (kbd "C-x R") 'git-gutter:revert-hunk)

(defvar git-gutter:my-threshold-of-stopping-active-update 2000)
(add-hook 'find-file-hook
          (lambda ()
            (if (> (line-number-at-pos (point-max))
                   git-gutter:my-threshold-of-stopping-active-update)
                (progn
                  (make-local-variable 'git-gutter:update-hooks)
                  (setq git-gutter:update-hooks '(after-save-hook after-revert-hook)))
              nil)))
