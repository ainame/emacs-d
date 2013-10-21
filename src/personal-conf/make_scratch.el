;;
;; make-scratch.el
;;

(defun my-make-scratch (&optional arg)
  (interactive)
  (progn
    ;; "*scratch*" を作成して buffer-list に放り込む
    (set-buffer (get-buffer-create "*scratch*"))
    (funcall initial-major-mode)
    (erase-buffer)
    (when (and initial-scratch-message (not inhibit-startup-message))
      (insert initial-scratch-message))
    (or arg (progn (setq arg 0)
		   (switch-to-buffer "*scratch*")))
    (cond ((= arg 0) (message "*scratch* is cleared up."))
	  ((= arg 1) (message "another *scratch* is created")))))

(defun my-buffer-name-list ()
  (mapcar (function buffer-name) (buffer-list)))

(add-hook 'kill-buffer-query-functions
    ;; *scratch* バッファで kill-buffer したら内容を消去するだけにする
	  (function (lambda ()
		      (if (string= "*scratch*" (buffer-name))
			  (progn (my-make-scratch 0) nil)
			t))))

(add-hook 'after-save-hook
;; *scratch* バッファの内容を保存したら *scratch* バッファを新しく作る
	  (function (lambda ()
		      (unless (member "*scratch*" (my-buffer-name-list))
			(my-make-scratch 1)))))
