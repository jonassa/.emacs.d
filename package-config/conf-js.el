(define-derived-mode babel-mode web-mode "Babel")

(defun mlb/babel-init ()
  (web-mode-set-content-type "jsx"))

(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . babel-mode))
(add-hook 'babel-mode-hook 'mlb/babel-init)

(provide 'conf-js)
