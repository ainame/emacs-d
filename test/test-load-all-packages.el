(require 'cl)
(require 'ert)

(defun check-package (pkg)
  (ignore-errors
    (el-get-package-installed-p pkg)))

(defmacro deftest-load-package (pkg)
  `(ert-deftest ,(intern (concat "test-load-package-" (symbol-name pkg))) ()
     ,(concat "test for loading " (symbol-name pkg))
     (should (check-package ',pkg))))

(defun deftest-load-package-func (pkg)
  (eval `(deftest-load-package ,pkg)))

(mapcar 'deftest-load-package-func my-el-get-packages)
