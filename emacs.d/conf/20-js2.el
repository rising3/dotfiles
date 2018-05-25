(defun js-indent-hook()
  ;; インデント幅を4にする
  (setq js-indent-level 4
	js-expr-indent-offset 4
	indent-tabs-mode nil)
  ;; whitch分のcaseラベルをインデントする関数を定義する
  (defun my-js-indent-line ()
    (interactive)
    (let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
	   (offset (- (current-column) (current-indentation)))
	   (indentation (js--proper-indentation parse-status)))
      (back-to-indentation)
      (id (looking-at "case\\s-")
	  (indent-line-to (+ indentation 2))
	  (js-indent-line))
      (when (> offset 0) (forward-char offset))))
  ;; caseラベルのインデント処理をセットする
  (set (make-locl-variable 'indent-line-function) 'my-js-indent-line)
  ;; ここまでcaseラベルを調整する設定
  )

;; js-modeの起動時にhookを追加
(add-hook 'js-mode-hook 'js-indent-hook)

		    
