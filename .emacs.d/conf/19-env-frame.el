;; 起動時のウィンドウサイズ、色などを設定
(if (boundp 'window-system)
    (setq default-frame-alist
          (append (list
                   '(foreground-color . "black")  ; 文字色
                   '(background-color . "white")  ; 背景色
                   '(border-color     . "white")  ; ボーダー色
                   '(mouse-color      . "black")  ; マウスカーソルの色
                   '(cursor-color     . "black")  ; カーソルの色
                   '(cursor-type      . box)      ; カーソルの形状
                   '(top . 60) ; ウィンドウの表示位置（Y座標）
                   '(left . 100) ; ウィンドウの表示位置（X座標）
                   '(width . 96) ; ウィンドウの幅（文字数）
                   '(height . 56) ; ウィンドウの高さ（文字数）
                   )
                  default-frame-alist)))


;; フレーム透過設定
(add-to-list 'default-frame-alist '(alpha . (0.90 0.10)))

;; ツールバーとスクロールバーを非表示
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

;; カラーテーマ設定
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-oswald)
;;(color-theme-renegade)
;;(color-theme-arjen)
;;(color-theme-calm-forest)
;;(color-theme-deep-blue)
(color-theme-raspopovic)

(setq initial-frame-alist default-frame-alist)
