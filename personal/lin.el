(global-linum-mode 1)
(setq linum-format "%4d \u2502")
(require 'hlinum)
(hlinum-activate)

(prelude-require-packages '(smex))
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(prelude-require-packages '(2048-game flycheck-ghcmod flycheck-haskell ghc company-flx company-ghc company-ghci))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(add-to-list 'company-backends '(company-ghc :with company-dabbrev-code))
