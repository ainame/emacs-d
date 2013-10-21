;;; fluorescence-theme.el --- Custom face theme for Emacs
;; Copyright (C) 2010 .

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme fluorescence "")

(custom-theme-set-faces
 'fluorescence
 '(default ((t (:background "#000000" :foreground "#eeeeec"))))
 '(cursor ((t (:background "#000000" :foreground "#cccccc"))))
 '(region ((t (:background "#eedc82"))))
 '(mode-line ((t (:background "#bfbfbf" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#e5e5e5" :foreground "#333333"))))
 '(fringe ((t (:background "#f2f2f2"))))
 '(minibuffer-prompt ((t (:foreground "#00d4ff"))))
 '(font-lock-builtin-face ((t (:foreground "#729fcf"))))
 '(font-lock-comment-face ((t (:foreground "red3"))))
 '(font-lock-constant-face ((t (:foreground "#dd33ff"))))
 '(font-lock-function-name-face ((t (:foreground "#3399ff"))));;"#edd400"))))
 '(font-lock-keyword-face ((t (:foreground "#66ffff"))))
 '(font-lock-string-face ((t (:foreground "green2"))))
 '(font-lock-type-face ((t (:foreground "#ff3377"))));;"#8ae234"))))
 '(font-lock-variable-name-face ((t (:foreground "#ffaa00"))));;"#00e8e8"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000" :weight bold))))
 '(isearch ((t (:background "#cd00cd" :foreground "#b0e2ff"))))
 '(lazy-highlight ((t (:background "#afeeee"))))
 '(link ((t (:foreground "#0000ff" :underline t))))
 '(link-visited ((t (:foreground "#8b008b" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#e5e5e5" :foreground "#333333")))))
(provide-theme 'fluorescence)

;; Local Variables:
;; no-byte-compile: nil
;; End:

;;; fluorescence-theme.el  ends here
