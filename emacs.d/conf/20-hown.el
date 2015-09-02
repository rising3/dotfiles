;; howmメモ保存の場所
(setq howm-directroy (concat user-emacs-directory "howm"))

;; howm-menuの元を日本語にする
(setq howm-menu-lang 'ja)

;; howmメモを１日１ファイルにする
(setq howm-file-name-format "%Y/%m/%Y-%d.howm")

;; howm-modeを読み込む
(when (require 'howm-mode nil t)
  ;; C-c,,でhowm-menuを起動
  (define-key global-map (kbd "C-c ,,") 'howm-menu))
