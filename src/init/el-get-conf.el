(require 'el-get)
(setq el-get-sources
      '(
	(:name git-modes
	       :website "https://github.com/magit/git-modes#readme"
	       :type github
	       :pkgname "magit/git-modes")
	(:name key-combo
	       :website "https://github.com/uk-ar/key-combo#readme"
	       :type github
	       :pkgname "uk-ar/key-combo")
	(:name anything-c-moccur
	       :type http
	       :url "https://raw.github.com/inouetakuya/emacs/master/elisp/anything-c-moccur.el"
	       :depends (anything color-moccur)
	       :description "anything interface for color-moccur")
	(:name grep-edit
	       :website "https://github.com/emacsmirror/grep-edit"
	       :type github
	       :pkgname "emacsmirror/grep-edit")
	)
)

(el-get 'sync 'ace-jump-mode)
(el-get 'sync 'auto-async-byte-compile)
(el-get 'sync 'auto-complete)
(el-get 'sync 'auto-install)
(el-get 'sync 'browse-kill-ring)
(el-get 'sync 'coffee-mode)
(el-get 'sync 'dash)
(el-get 'sync 'drag-stuff)
(el-get 'sync 'expand-region)
(el-get 'sync 'flex-autopair)
(el-get 'sync 'flymake-cursor)
(el-get 'sync 'flymake-easy)
(el-get 'sync 'fuzzy)
(el-get 'sync 'gist)
(el-get 'sync 'git-modes)
(el-get 'sync 'git-gutter)
(el-get 'sync 'grep-edit)
(el-get 'sync 'key-combo)
(el-get 'sync 'magit)
(el-get 'sync 'markdown-mode)
(el-get 'sync 'migemo)
(el-get 'sync 'motion-mode)
(el-get 'sync 'multi-term)
(el-get 'sync 'multiple-cursors)
(el-get 'sync 'paredit)
(el-get 'sync 'popup)
(el-get 'sync 'popwin)
(el-get 'sync 'pos-tip)
(el-get 'sync 'quickrun)
(el-get 'sync 'ruby-mode)
(el-get 'sync 'ruby-end)
(el-get 'sync 'slim-mode)
(el-get 'sync 'undo-tree)
(el-get 'sync 'yaml-mode)
(el-get 'sync 'yasnippet)

(provide 'el-get-conf)
