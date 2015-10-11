(prelude-require-packages '(smex))
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(ac-config-default)

;; Rust Completion
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(defun my/racer-mode-hook ()
  (ac-racer-setup))
(add-hook 'racer-mode-hook 'my/racer-mode-hook)

(custom-set-variables
 '(racer-cmd (expand-file-name "/usr/local/bin/racer"))
 '(racer-rust-src-path (expand-file-name "~/Downloads/rustc/src/")))

(require 'smartparens-config)

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'after-init-hook #'global-flycheck-mode)
