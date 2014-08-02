;; バックスラッシュ対策
(define-key global-map [?¥] [?\\])

;; C-mにnewline-and-indentを割り当てる
;; 先ほどとは異なりglobal-set-keyを利用
(global-set-key (kbd "C-m") 'newline-and-indent)

;; 行の折り返し表示を切り替える
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; "C-t" でウインドウを切り替える
;; 初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)

