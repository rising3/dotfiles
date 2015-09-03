;; フォント
;; abcdefghijklmnopqrstuvwxyz 
;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
;; `1234567890-=\[];',./
;; ~!@#$%^&*()_+|{}:"<>?
;;
;; 壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五
;; 123456789012345678901234567890123456789012345678901234567890
;; ABCdeＡＢＣｄｅ
;;
;; ┌─────────────────────────────┐
;; │　　　　　　　　　　　　　罫線                            │
;; └─────────────────────────────┘
;;

;; Windows用設定
(when (eq system-type 'windows-nt)
;  (setq file-name-coding-system 'cp932)
;  (setq locale-coding-system 'cp932)
  (set-language-environment "Japanese")
  (set-terminal-coding-system 'utf-8-unix)
  (set-keyboard-coding-system 'utf-8-unix)
  (set-buffer-file-coding-system 'utf-8-unix)
  (setq default-buffer-file-coding-system 'utf-8-unix)
  (prefer-coding-system 'utf-8-unix)
  (set-default-coding-systems 'utf-8-unix)
  (setq file-name-coding-system 'shift_jis)

  ;; 日本語入力
  (setq default-input-method "W32-IME")
  (setq-default w32-ime-mode-line-state-indicator "[--]")
  (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
  (w32-ime-initialize)
  (global-set-key [M-kanji] 'ignore)
  
  ;;** IME OFF時の初期カーソルカラー
  (set-cursor-color "red")

  ;;** IME ON/OFF時のカーソルカラー
  (add-hook 'input-method-activate-hook
	    (lambda() (set-cursor-color "green")))
  (add-hook 'input-method-inactivate-hook
	    (lambda() (set-cursor-color "red")))
  
  ;;** バッファ切り替え時にIME状態を引き継ぐ
  (setq w32-ime-buffer-switch-p nil)
  
  ;; フォント設定
  (set-face-attribute 'default nil
		      :family "Migu 1M"
		      :height 100)

  (when (>= emacs-major-version 23)
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0208
     (font-spec :family "MeiryoKe_Console"))

    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0212
     (font-spec :family "MeiryoKe_Console"))

    (setq face-font-rescale-alist
	  '(("MeiryoKe_Console" . 1.08)))))
