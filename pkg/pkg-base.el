(require 'package)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize) ;; You might already have this line

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(setq package-check-signature nil)

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	setup coding system and window property
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(prefer-coding-system 'utf-8)
(setenv "LANG" "en_US.UTF-8")
(setenv	"LC_ALL" "en_US.UTF-8")
(setenv	"LC_CTYPE" "en_US.UTF-8")

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)


;; useful mode settings
(display-time-mode 1)
(column-number-mode 1)
(show-paren-mode nil)
(display-battery-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(global-auto-revert-mode t)
(global-hl-line-mode nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	setup history of edited file
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;(savehist-mode 1)
;;(setq savehist-file "~/.emacs.d/.savehist")
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))


(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;;; 关闭自动备份
(setq auto-save-default nil
      auto-save-timeout 0)

;; (setq url-proxy-services
   ;; '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ;; ("http" . "127.0.0.1:7890")
     ;; ("https" . "127.0.0.1:7890")))

(provide 'pkg-base)
