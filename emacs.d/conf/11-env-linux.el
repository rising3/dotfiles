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
  (set-default-font "-PfEd-Ricty-bold-normal-normal-*-15-*-*-*-*-0-iso10646-1")
  (progn
    (set-face-font 'default
		   "-PfEd-Ricty-bold-normal-normal-*-15-*-*-*-*-0-iso10646-1")
    (set-face-font 'bold
		   "-PfEd-Ricty-bold-normal-normal-*-15-*-*-*-*-0-iso10646-1")
    (set-face-font 'italic
		   "-PfEd-Ricty-bold-normal-normal-*-15-*-*-*-*-0-iso10646-1")
    (set-face-font 'bold-italic
		   "-PfEd-Ricty-bold-normal-normal-*-15-*-*-*-*-0-iso10646-1")
    ))
