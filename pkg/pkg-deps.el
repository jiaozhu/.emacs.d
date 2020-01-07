;;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;;	Powerful undo system for emacs
;;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package undo-tree
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)
    ))

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Show key bind for currently entered incomplete command
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package which-key
  :config
  (progn
    (which-key-mode)
    (which-key-setup-side-window-bottom)))

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Disable the mouse in Emacs
;;	https://github.com/purcell/disable-mouse
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package disable-mouse
  :config (global-disable-mouse-mode))


;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Show recent file
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package recentf
  :config
  (progn
    (setq recentf-max-saved-items 200
	  recentf-max-menu-items 15)
    (recentf-mode)
    ))


;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Show line number of current coding window
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package linum
  :init
  (progn
    (global-linum-mode t)
    (setq linum-format "%4d  ")))

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Auto pair when input
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package autopair
  :config
  (autopair-global-mode))

(use-package neotree
  :config
  (progn
    (setq neo-smart-open t)
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
    (setq neo-window-fixed-size nil)
    (setq-default neo-show-hidden-files nil)
    (global-set-key [f2] 'neotree-refresh)
    (global-set-key [f8] 'neotree-toggle)))


;; ************************************************************
;; 	Rainbow mode
;; ************************************************************
(use-package rainbow-mode
  :config
  (progn
    (defun pkg-enable-rainbow ()
      (rainbow-mode t))
    (add-hook 'prog-mode-hook 'pkg-enable-rainbow)
    ))

(use-package iedit
  :bind (("C-c ;" . iedit-mode)))

(use-package projectile
  :ensure t
  :config
  (projectile-global-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package ace-window
  :config
  (global-set-key (kbd "M-o") 'ace-window))

;;; 语法检测
(use-package flycheck
  :ensure t
  :config
  (progn
    (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
        (global-flycheck-mode)))


(provide 'pkg-deps)
