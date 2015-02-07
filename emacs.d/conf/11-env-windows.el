;; Windows用設定
(when (eq system-type 'w32)
  (setq file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932)

  ;; 日本語入力
  (setq default-input-method "W32-IME")
  (setq-default w32-ime-mode-line-state-indicator "[--]")
  (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
  (w32-ime-initialize)
  (global-set-key [M-kanji] 'ignore)

  ;; フォント設定
  (set-face-attribute 'default nil
		      :family "Consolas"
		      :height 120)

  (when (>= emacs-major-version 23)
    (set-fontset-font
     (frame-parameter 'font)
     'japanese-jisx0208
     (font-spec :family "MeiryoKe_Console"))

    (set-fontset-font
     (frame-parameter 'font)
     'japanese-jisx0212
     (font-spec :family "MeiryoKe_Console"))

    (setq face-font-rescale-alist
	  '(("MeiryoKe_Console" . 1.08))))
  )
