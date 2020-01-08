;;; pkg-python.el --- Python 设置相关
;;; Commentary: 编码、自动提示、语法检测 --- ABC

;;; (setq tab-width 4)
(set-variable 'python-indent-offset 4)

(setenv "PYTHONIOENCODING" "utf-8")

(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

;; For elpy
(setq elpy-rpc-python-command "python3")
;; For interactive shell
(setq python-shell-interpreter "python3")


(when (load "flycheck" t t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(use-package py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


(provide 'pkg-python)
;;; pkg-python.el ends here
