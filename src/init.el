;; benchmark
(add-hook 'after-init-hook
	  (lambda ()
	    (message "init time: %d msec"
		     (+ (* (- (nth 1 after-init-time) (nth 1 before-init-time)) 1000)
			(/ (- (nth 2 after-init-time) (nth 2 before-init-time)) 1000)))))

;; load-path
;; (setq user-emacs-directory "path/to/emacs-dir")
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "init")))
(require 'my-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-kill-ring-quit-action (quote kill-and-delete-window) t)
 '(safe-local-variable-values (quote ((encoding . utf-8) (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook" (add-hook (quote write-contents-functions) (lambda nil (delete-trailing-whitespace) nil)) (require (quote whitespace)) "Sometimes the mode needs to be toggled off and on." (whitespace-mode 0) (whitespace-mode 1)) (whitespace-line-column . 80) (whitespace-style face trailing lines-tail) (require-final-newline . t))))
 '(yas-trigger-key "TAB"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
