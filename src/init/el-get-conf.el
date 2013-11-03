(require 'el-get)
(setq el-get-sources
      '(
	(:name git-modes
	       :website "https://github.com/magit/git-modes#readme"
	       :type github
	       :pkgname "magit/git-modes")
	(:name key-combo
	       :website "https://github.com/uk-ar/key-combo#readme"
	       :type http
	       :url "https://raw.github.com/uk-ar/key-combo/6bac93e90f80150d497d82275638e34455c6aa5f/key-combo.el")
	(:name anything-c-moccur
	       :type http
	       :url "https://raw.github.com/inouetakuya/emacs/master/elisp/anything-c-moccur.el"
	       :depends (anything color-moccur)
	       :description "anything interface for color-moccur")
	(:name grep-edit
	       :type github
	       :website "https://github.com/emacsmirror/grep-edit"
	       :pkgname "emacsmirror/grep-edit")
	(:name anything-startup
	       :type http
	       :depends (anything)
	       :url "https://raw.github.com/emacsmirror/emacswiki.org/master/anything-startup.el")
	(:name eldoc
	       :type builtin)
	)
)

(defun my-el-get-sync (package)
  (ignore-errors (el-get 'sync package)))

(defun my-el-get-sync-all (packages)
  (mapcar 'my-el-get-sync packages))

(defvar my-el-get-packages
  '(
    ace-jump-mode
    anything
    anything-startup
    anything-git-files
    anything-c-moccur
    auto-async-byte-compile
    auto-complete
    auto-install
    browse-kill-ring
    coffee-mode
    cperl-mode
    dash
    eldoc
    eldoc-extension
    expand-region
    flymake-cursor
    flymake-easy
    fuzzy
    gist
    git-modes
    git-gutter
    grep-edit
    key-combo
    magit
    markdown-mode
    migemo
    motion-mode
    multiple-cursors
    paredit
    popup
    popwin
    pos-tip
    quickrun
    ruby-mode
    slim-mode
    smartparens
    term+
    term+mux
    undo-tree
    yaml-mode
    yasnippet
    ))

(defalias 'ep 'el-get-list-packages)

(provide 'my-setup/el-get-conf)
