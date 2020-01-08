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

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;	Usefule global key bind
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(global-set-key (kbd "C-\\") 'comment-line)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


(provide 'pkg-keys)
