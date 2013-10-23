(require 'key-combo)
(defvar my-key-combo-common-default
  '(("="  . (" = " " == " " === " ));;" === " for js
    ("=>" . " => ")
    ("=~" . " =~ ");;for ruby regexp
    ("+"  . (" + " "++"))
    ("+=" . " += ")
    ("-"  . (" - " "->" "--"))                ;undo when unary operator
    ("-=" . " -= ")
    (">"  . (key-combo-execute-original " >> "))
    ;; " > " should be bind in flex-autopair
    (">=" . " >= ")
    (">>=" . " >>= ")
    ("!" . key-combo-execute-original)
    ;; NOT for c
    ;; don't use " !" because of ruby symbol
    ;; and unary operator
    ("!="  . " != " ) ;;" !== " for js and php
    ("!==" . " !== ") ;;" !== " for js and php
    ("!~" . " !~ ")   ; for ruby
    ("~" . key-combo-execute-original)
    ;; for unary operator
    ;; ("::" . " :: ") ;; for haskell not in ruby
    ;; (":" . ":");;for ruby symbol
    ("&"  . (" & " " && "))             ;overwrite in c
    ("*"  . " * " )                     ;overwrite in c
    ("*="  . " *= " )
    ("<" . (key-combo-execute-original " << "))
    ;; " < " should be bound in flex-autopair
    ("<=" . " <= ")
    ;; ("<?" . "<?`!!'?>");; for what?
    ("<!" . "<!-- `!!' -->");; for html comment
    ;; ("|"  . (" | " " || "));; bit OR and OR for c
    ("||=" . " ||= ")                   ; for ruby
    ;; ("/" . (" / " "// " "/`!!'/")) ;; devision,comment start or regexp
    ("/" . (key-combo-execute-original))
    ("/ SPC" . " / ")
    ("/=" . " /= ")
    ("*/" . "*/")
    ("/*" . "/* `!!' */")
    ("/* RET" . "/*\n`!!'\n*/");; add *? m-j
    ("{" . (key-combo-execute-original))
    ("{ RET" . "{\n`!!'\n}")
    ("C-a"   . (move-beginning-of-line
                                    beginning-of-buffer key-combo-return))
    ("C-e"   . (end-of-line end-of-buffer key-combo-return))
    )
  )

(key-combo-mode 1)
(key-combo-define-hook 
 '(cperl-mode-hook perl-mode-hook
                   ruby-mode-hook js-mode-hook)
 'key-combo-common-load-default
 my-key-combo-common-default)

(key-combo-define-hook
 '(cperl-mode-hook perl-mode-hook)
 'key-combo-perl-load-default
 key-combo-perl-default)
