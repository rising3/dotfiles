;; オートセーブ
(auto-save-mode t)
(setq auto-save-default t)
;; 下記の「nil」を「t」とすると終了時にオートセーブファイルが削除される
(setq delete-auto-save-files t)
;; オートセーブファイルの作成場所を~/.emacs.d/backups/に変更する
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))
;; オートセーブ作成までの秒間隔
(setq auto-save-timeout 15)
;; オートセーブ作成までのタイプ間隔
(setq auto-save-interval 60)

;; バックアップファイル
(setq backup-inhibited t)
(setq make-backup-files t)
;; バックアップファイルの作成場所を~/.emacs.d/backups/に変更する
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backups/"))
            backup-directory-alist))
