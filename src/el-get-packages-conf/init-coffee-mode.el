(add-hook
 'coffee-mode-hook
 '(lambda ()
    ;; automatically clean up bad whitespace
    (setq whitespace-action '(auto-cleanup))
    ;; only show bad whitespace
    (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
    ;; This gives you a tab of 2 spaces
    (setq coffee-tab-width 2)
    (key-combo-mode 1)))
