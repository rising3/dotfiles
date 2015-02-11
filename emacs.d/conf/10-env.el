;; 起動時のメッセージを表示しない
;;「t」を「nil」にするとメッセージが表示される
(setq inhibit-startup-message t)

;; カレントディレクトリをホームディレクトリに設定
;; ""内は任意のディレクトリを指定可能
(cd "~/")

;; タブサイズ
(setq tab-width 4)
(setq cssm-indent-level 4)
(setq cssm-indent-function #'cssm-c-style-indenter)

;; テキストエンコーディングとしてUTF-8を優先的に使用する
;; 「utf-8」の部分を「cp932」とするとCP932（Windows用Shift JIS）優先となる
(prefer-coding-system 'utf-8)

;; 行番号・桁番号をモードラインに表示する・しない設定
(line-number-mode t) ; 行番号。tなら表示、nilなら非表示
(column-number-mode t) ; 桁番号。tなら表示、nilなら非表示

;; 行番号設定
(require 'linum)
(global-linum-mode t)
(setq linum-format "%5d")

;; モードラインにファイルサイズ、現在時刻、バッテリーを表示する
(size-indication-mode t)
(display-time-mode t)
(display-battery-mode t)

;; undo-treeの設定
(when (require 'undo-tree nil t)
  (global-undo-tree-mode t)
  ;; C-' にリドゥを割り当てる  
  (global-set-key (kbd "C-'") 'undo-tree-redo))
