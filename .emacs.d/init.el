;; Emacs23より前のバージョンへの対応
(when (> emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))
;; packge.elの設定
(when (> emacs-major-version 23)
  (when (require 'package nil t)
    ;; パッケージリポジトリにMarmaladeと開発者運営のELPAを追加
    (add-to-list 'package-archives
		 '("marmalade" . "http://marmalade-repo.org/packages/"))
    (add-to-list 'package-archives
		 '("ELPA" . "http://tromey.com/elpa/"))
    ;; インストールしたパッケージにロードパスを通して読み込む
    (package-initialize)))

;; パスの設定
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "~/bin")

;; load-path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; 引数のディレクトリとそのサブディレクトリを load-path に追加
(add-to-load-path "elisp" "conf" "public_repos")

;; Init Loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

;; auto-installの設定
(when (require 'auto-install nil t)
  ;; インストールディレクトリの設定
  (setq auto-install-directory "~/.emacs.d/elisp")
  ;; EmacsWikiに登録されているelispの名前を取得する
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;; wgrepの設定
(require 'wgrep undohist )

;; nilの設定
(when (require 'undohist nil t)
  (undohist-initialize))

;; point histの設定
(when (require 'point-undo nil t)
  (define-key global-map [f5] 'point-undo)
  (define-key global-map [f6] 'point-redo)
  ;; お勧めキーバインド
  ;; (define-key global-map (kbd "M-[") 'point-undo)
  ;; (define-key global-map (kbd "M-]") 'point-redo)
 )

;; cua-modeの設定
(cua-mode t)
