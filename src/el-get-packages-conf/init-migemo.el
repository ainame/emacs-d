(require 'migemo)
(setq migemo-options '("-q" "--emacs"))
(setq migemo-command my-migemo-bin-path)
(setq migemo-dictionary my-migemo-dict-dir)
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(migemo-init)
(set-process-query-on-exit-flag migemo-process nil)
(setq moccur-use-migemo t)

;; workaround for bug
;; see http://uwabami.junkhub.org/log/20141210.html
(setq migemo-isearch-min-length 2)
(setq migemo-use-frequent-pattern-alist nil)
