;; 最近使ったファイルに加えないファイルを
;; 正規表現で指定する
(setq recentf-exclude
      '("/TAGS$"
        "/var/tmp/"
        "ido.last"
        "smex-items"
        "COMMIT_EDITMSG"
        "./straight/"
        "persp-confs"
        ".breadcrumb"
        "*.sqlite"
        "./server/"
        "^/sudo:"
        )
      )

(add-to-list 'recentf-exclude "ido.last")
;; 最近使ったファイルに加えないファイルをg
(add-to-list 'recentf-exclude "smex-items")
(add-to-list 'recentf-exclude "woman-cache")
;; 正規表現で指定する
(add-to-list 'recentf-exclude "COMMIT_EDITMSG")
(add-to-list 'recentf-exclude "^/docker:")
(add-to-list 'recentf-exclude "^/sudo:")


(add-to-list 'recentf-exclude
            (expand-file-name "~/.emacs.d/elsp/*"))
(add-to-list 'recentf-exclude
            (expand-file-name "~/.emacs.d/elpa/*"))
(add-to-list 'recentf-exclude
            (expand-file-name "~/.emacs.d/cache/*"))

(add-to-list 'recentf-exclude
            (expand-file-name "/usr/local/Cellar/*"))


(use-package recentf-ext
  :straight t
  :custom
  ;; 最近のファイル500個を保存する
  (recentf-max-saved-items 500)

  :config
  (recentf-mode 1)

  )
