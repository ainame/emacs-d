(defalias 'perl-mode 'cperl-mode)
(setq auto-mode-alist (append '(("\\.pl$" . cperl-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.psgi$" . cperl-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.cgi$" . cperl-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.t$" . cperl-mode)) auto-mode-alist))
(setq auto-mode-alist
      (append (list (cons "\\.tmpl$" 'html-mode)
                    (cons "\\.tmpl$" 'html-helper-mode))
              auto-mode-alist))

;; Perlモジュール名にカーソルを合わせてソースを開く
(defun perl-find-module ()
  (interactive)
  (let
      (end begin module path-to-module)
    (save-excursion
      (setq begin (save-excursion (skip-chars-backward "a-zA-Z0-9_:") (point)))
      (setq end (save-excursion (skip-chars-forward "a-zA-Z0-9_:") (point)))
      (setq module (buffer-substring begin end)))
    (with-temp-buffer
      (pop-to-buffer
       (find-file-noselect
        (replace-regexp-in-string
         "[\s\n\r]+$" ""
         (shell-command-to-string (concat "perldoc -lm " module " 2> /dev/null"))))))))

(add-hook 
 'cperl-mode-hook
 '(lambda ()
    (cperl-set-style "PerlStyle")
    (define-key cperl-mode-map (kbd "C-c C-c") 'quickrun)
    (define-key cperl-mode-map (kbd "C-h") 'delete-backward-char)
    (define-key cperl-mode-map (kbd "C-j") 'ace-jump-mode)
    (define-key cperl-mode-map (kbd "M-.") 'perl-find-module)
    (local-unset-key "\C-h")
    (set-face-background 'cperl-array-face "black")
    (set-face-background 'cperl-hash-face "black")
    (setq cperl-auto-newline nil)
    (setq cperl-close-paren-offset -4)
    (setq cperl-comment-column 40)
    (setq cperl-continued-statement-offset 4)
    (setq cperl-electric-keywords nil)
    (setq cperl-electric-lbrace-space t)
    (setq cperl-electric-parens nil)
    (setq cperl-hairy t)
    (setq cperl-indent-parens-as-block t)
    (setq indent-tabs-mode nil)
    (setq-default tab-width 4 indent-tabs-mode nil)
    ))

