;(require 'clojure-mode)
;(defun turn-on-paredit () (paredit-mode 1))
;(add-hook  'clojure-mode-hook 'turn-on-paedit)

(unless (package-installed-p 'cider)
  (package-install 'cider))

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-auto-mode nil)
(setq nrepl-log-messages nil)
(setq nrepl-hide-special-buffers t)


