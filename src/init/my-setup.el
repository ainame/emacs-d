;; setup package.el
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; load-path
(defun my-setup-abs-path (path)
  (expand-file-name (concat user-emacs-directory path)))
(defvar personal-dir (my-setup-abs-path "personal-conf"))
(add-to-list 'custom-theme-load-path personal-dir)
(add-to-list 'load-path (my-setup-abs-path "el-get"))
(add-to-list 'load-path (my-setup-abs-path "el-get/el-get"))
(add-to-list 'load-path (my-setup-abs-path "el-get/cl-lib"))
(add-to-list 'load-path personal-dir)

(setq el-get-user-package-directory (my-setup-abs-path "el-get-packages-conf"))
(setq el-get-dir (my-setup-abs-path "el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;; load el-get settings at first
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(require 'el-get-conf)

;; load other personal settings
(when (file-directory-p personal-dir)
  (mapc 'load (directory-files personal-dir 't "^[^#].*elc$")))

;; load color-theme
(load "fluorescence-theme")

(provide 'my-setup)
