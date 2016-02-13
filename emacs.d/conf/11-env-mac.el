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

;; Mac用設定
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (setq file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs)

  ;; フォント設定
  (set-frame-font "Ricty-14"))

  ;; (set-face-attribute 'default nil
  ;; 		      :family "Ricty"
  ;; 		      :height 120)

  ;; (set-fontset-font (frame-parameter nil 'font)
  ;; 		    'japanese-jisx0208
  ;; 		    (font-spec :family "Hiragino Maru Gothic ProN"))

  ;; (set-fontset-font (frame-parameter nil 'font)
  ;; 		    'katakana-jisx0201
  ;; 		    (font-spec :family "Hiragino Maru Gothic ProN"))

  ;; (setq face-font-rescale-alist
  ;; 	       '((".*Hiragino_Maru_Gothic_ProN.*" . 1.2))))
