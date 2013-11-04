(require 'smartparens-config)
(smartparens-global-mode t)

(sp-with-modes '(ruby-mode motion-mode)
  (sp-local-pair "do" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-block-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "{" "}"
                 :actions '(insert wrap)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-post-handler)
                 :suffix "")

  (sp-local-pair "begin" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-block-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "def" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "class" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "module" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "case" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-or-word-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-method-p
                 :suffix "")

  (sp-local-pair "if" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-word-or-inline-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-inline-match-p
                 :suffix "")

  (sp-local-pair "unless" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-word-or-inline-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-inline-match-p
                 :suffix "")

  (sp-local-pair "while" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-word-or-inline-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-inline-match-p
                 :suffix "")

  (sp-local-pair "until" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-word-or-inline-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-inline-match-p
                 :suffix "")

  (sp-local-pair "for" "end"
                 :when '(("SPC" "RET" "<evil-ret>"))
                 :unless '(sp-ruby-in-string-word-or-inline-p)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-handler)
                 :post-handlers '(sp-ruby-def-post-handler)
                 :skip-match 'sp-ruby-skip-inline-match-p)

  (sp-local-pair "|" "|"
                 :when '(sp-ruby-should-insert-pipe-close)
                 :actions '(insert)
                 :pre-handlers '(sp-ruby-pre-pipe-handler)
                 :suffix ""))
