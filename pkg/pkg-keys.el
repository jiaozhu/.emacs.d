(defun indent-buffer ()
      (interactive)
      (save-excursion
        (indent-region (point-min) (point-max) nil)))
(global-set-key [f12] 'indent-buffer)

;; Window Resize
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)


(provide 'pkg-keys)
