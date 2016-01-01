;; キーワードのカラー表示を有効化
;; 「t」の部分を「nil」にするとカラー表示をOffにできる
(global-font-lock-mode t)

;; 選択範囲をハイライトする
;;「t」を「nil」にするとハイライトなしに
(setq-default transient-mark-mode t)

;; 対応するカッコをハイライト表示する
;; paren-mode: 対応する括弧を強調して表示する
(setq show-paren-delay 0)
(show-paren-mode t)
;; parenのスタイル : expressionは括弧内も強調表示
(setq show-paren-style 'expression)
;; フェイスを変更する
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "yellow")

;; 現在行のハイライト
(defface my-hl-line-face
  ;; 背景がdarkならば背景色を紺に
  '((((class color) (background drak))
     (:background "NavyBlue" t))
    ;; 背景がlightならば背景色を緑に
    (((class color) (background light))
     (:background "LightGoldenrodYellow" t))
    (t (:lod t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)

;; 選択範囲の色を指定
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "black")

