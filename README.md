# emacs-d
emacs-d is a pacakage of configuration files and utility rake tasks for me.

## contents
```
.
├── README.md
├── Rakefile
├── old
└── src
    ├── el-get
    ├── el-get-packages-conf
    ├── init.el
    ├── my-setup.el
    ├── personal-conf
    └── snippets
```

## usage

```sh
$ rake copy     # copy ~/.emacs.d into `pwd`/old
$ rake new      # create symbolic link to `pwd`/src
$ rake old      # you can revert src settings
$ rake compile  # you can compile conf files
```

## using extensions
These extensions will sync to remote repos by el-get.

* ace-jump-mode
* anything
* anything-c-moccur
* anything-git-files
* anything-grep
* anything-startup
* auto-async-byte-compile
* auto-complete
* auto-install
* browse-kill-ring
* browse-kill-ring+
* cl-lib
* coffee-mode
* color-occur
* drag-stuff
* expand-region
* flymake-cursor
* fuzzy
* gist
* git-modes
* grep-edit
* magit
* markdown-mode
* migemo
* motion-mode
* multi-term
* multiple-cursors
* paredit
* paredit-extension
* popup
* popup-pos-tip
* popwin
* pos-tip
* quickrun
* slim-mode
* undo-tree
* motion-mode
* wrap-region
* yasnippet
