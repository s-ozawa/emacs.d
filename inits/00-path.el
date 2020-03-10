;; macport とHomebrewでインストールしたデフォルトのパスを入れてある
(use-package exec-path-from-shell
  :straight t
  :if (memq window-system '(mac ns x))
  :init   (setenv "SHELL" "/opt/local/bin/zsh" "/usr/local/bin/zsh")
  :config
  (exec-path-from-shell-initialize))
