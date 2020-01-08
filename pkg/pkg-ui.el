(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-dracula t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(if (member "Source Code Pro" (font-family-list))
    (set-face-attribute 'default nil :font "Source Code Pro 14"))

(setq-default tab-width 4)

(if window-system
    (progn
      (setq frame-title-format '(buffer-file-name "%f" ("%b")))
      (tooltip-mode -1)
      (mouse-wheel-mode t)
      (scroll-bar-mode -1))
  (menu-bar-mode -1))

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; modeline setup
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(use-package all-the-icons)
;;(set-face-background 'vertical-border (face-background 'default))
;;(set-face-foreground 'vertical-border "grey")

(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; Default transparency
;;(add-to-list 'default-frame-alist '(alpha . 95))
(setq-default frame-title-format '("%f [%m]"))
;; dashboard
;; Set the title
(setq dashboard-banner-logo-title "Wythe's Emacs")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/splash-images/emacs-china-icon.png")
;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
(setq dashboard-footer "While any text editor can save your files, only Emacs can save your soul.")
(setq dashboard-footer-icon (all-the-icons-octicon "bug"  :height 1.1  :v-adjust -0.05  :face 'font-lock-keyword-face))
(setq dashboard-set-navigator t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-heading-icons t)
(setq dashboard-items '((recents  . 10)
                        (bookmarks . 5)
                        (projects . 5)))

(provide 'pkg-ui)
