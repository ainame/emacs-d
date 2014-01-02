# emacs-d
emacs-d is a pacakage of configuration files and utility rake tasks for me.

## usage

```sh
$ rake            # execute :clean and :compile task
$ rake copy       # copy ~/.emacs.d into `pwd`/old
$ rake new        # create symbolic link to `pwd`/src
$ rake old        # you can revert src settings
$ rake compile    # compile conf files
$ rake clean      # remove compiled conf files
$ rake gen_readme # generate README.md from pacakge list
```

## using extensions
These extensions will sync to remote repos by el-get.

* ace-jump-mode
* anything
* anything-c-moccur
* anything-git-files
* anything-startup
* auto-async-byte-compile
* auto-complete
* auto-install
* browse-kill-ring
* bundler
* coffee-mode
* cperl-mode
* dash
* eldoc
* eldoc-extension
* expand-region
* flymakae-jshint
* flymake-cursor
* flymake-easy
* fuzzy
* gist
* git-gutter
* git-modes
* grep-edit
* inf-ruby
* js3-mode
* key-combo
* magit
* markdown-mode
* migemo
* motion-mode
* multiple-cursors
* paredit
* perlbrew
* popup
* popwin
* pos-tip
* quickrun
* ruby-mode
* slim-mode
* smart-newline
* smartparens
* term+
* term+mux
* undo-tree
* yaml-mode
* yasnippet

LastModified: 2014-01-03 06:51:14 +0900
