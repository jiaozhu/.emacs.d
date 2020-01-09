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
;; (use-package disable-mouse
;;  :config (global-disable-mouse-mode))


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

;(use-package dashboard
;  :ensure t
;  :config
;  (dashboard-setup-startup-hook))

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

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent)))

(use-package auto-complete)
(ac-config-default)
(setq ac-ignore-case t)
(use-package auto-complete-c-headers)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(use-package yasnippet)
(yas-global-mode 1)
(use-package yasnippet-snippets)


; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
;;; gcc -xc++ -E -v -
(defun my:ac-c-header-init ()
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include")
)
; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(use-package google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
; turn on Semantic
(semantic-mode 1)
; let's define a function which adds semantic as a suggestion backend to auto complete
; and hook this function to c-mode-common-hook
(defun my:add-semantic-to-autocomplete() 
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
; turn on ede mode 
(global-ede-mode 1)

; you can use system-include-path for setting up the system header file locations.
; turn on automatic reparsing of open buffers in semantic
(global-semantic-idle-scheduler-mode 1)

(provide 'pkg-deps)
