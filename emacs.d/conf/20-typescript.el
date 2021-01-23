(require 'typescript-mode)
(require 'tide)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

(defun setup-tide-mode ()
  ;; snip
  (setq indent-tabs-mode nil)
  (setq typescript-indent-level 2)
  (setq tab-width 2)
  )

(add-hook 'typescript-mode-hook
		  (lambda ()
			(interactive)
			(setup-tide-mode)
			(flycheck-mode +1)
			(setq flycheck-check-syntax-automatically '(save mode-enabled))
			(eldoc-mode +1)
			(tide-hl-identifier-mode +1)
			(company-mode +1)
			(global-set-key (kbd "M-*") 'tide-jump-back)))

