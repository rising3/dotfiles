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

;; Linux用設定
(when (eq system-type 'gnu/linux)
  (setq file-name-coding-system 'utf-8)
  (setq locale-coding-system 'utf-8)

  ;; フォント設定
  (set-face-attribute 'default nil
		      :family "Ricty Discord"
		      :height 180)

  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0208
		    (cons "Ricty Discord" "iso10646-1"))

  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0212
		    (cons "Ricty Discord" "iso10646-1"))

  (set-fontset-font (frame-parameter nil 'font)
		    'katakana-jisx0201
		    (cons "Ricty Discord" "iso10646-1")))
