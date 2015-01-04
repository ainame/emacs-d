(let ((result
       (ignore-errors
         (require 'my-setup/initialize "initialize.elc")
         t)))
  (unless result
    (require 'my-setup/initialize "initialize.el")))

(let ((result
       (ignore-errors
         (require 'my-setup/el-get-conf "el-get-conf.elc")
         t)))
  (unless result
    (require 'my-setup/el-get-conf "el-get-conf.el")))

(let ((result
       (ignore-errors
         (require 'my-setup/environment "environment.elc")
         t)))
  (unless result
    (require 'my-setup/environment "environment.el")))

(let ((result
       (ignore-errors
         (require 'my-setup/load-packages "load-packages.elc")
         t)))
  (unless result
    (require 'my-setup/load-packages "load-packages.el")))

(let ((result
       (ignore-errors
         (require 'my-setup/load-personal-conf "load-personal-conf.elc")
         t)))
  (unless result
    (require 'my-setup/load-personal-conf "load-personal-conf.el")))

(provide 'my-setup)
