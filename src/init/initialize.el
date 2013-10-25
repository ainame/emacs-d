(defun my-setup-abs-path (path)
  (expand-file-name (concat user-emacs-directory path)))

;; load-path
(defvar personal-dir (my-setup-abs-path "personal-conf"))
(add-to-list 'load-path (my-setup-abs-path "el-get"))
(add-to-list 'load-path (my-setup-abs-path "el-get/el-get"))
(add-to-list 'load-path (my-setup-abs-path "el-get/cl-lib"))
(add-to-list 'load-path personal-dir)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(setq el-get-user-package-directory (my-setup-abs-path "el-get-packages-conf"))
(setq el-get-dir (my-setup-abs-path "el-get"))
(setq el-get-install-skip-emacswiki-recipes nil)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(when (not (file-directory-p (my-setup-abs-path "el-get/el-get/recipes/elpa")))
  (el-get-elpa-build-local-recipes))

(provide 'my-setup/initialize)
