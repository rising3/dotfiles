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
                   :family "Ricty"
                   :height 140)
  (custom-set-faces
   '(variable-pitch ((t (:family "Ricty"))))
   '(fixed-pitch ((t (:family "Ricty")))))

  (set-fontset-font
   nil 'japanese-jisx0208
   (font-spec :family "Ricty")))

