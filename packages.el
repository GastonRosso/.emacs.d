(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package nlinum
  :config
  (global-nlinum-mode 1)
  :ensure t)

(use-package evil
  :config
  (evil-mode 1)
  :ensure t)

(use-package neotree
  :config
  (global-set-key (kbd "C-0") 'neotree-toggle)
  (add-hook 'neotree-mode-hook
	    (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
  :ensure t)

(use-package ample-theme
  :config
  (load-theme 'ample t)
  :ensure t)

(use-package tide
  :ensure t)
