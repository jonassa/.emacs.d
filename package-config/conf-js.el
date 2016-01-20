(define-derived-mode babel-mode web-mode "Babel")

(defun mlb/babel-init ()
  (flycheck-mode +1)
  (web-mode-set-content-type "jsx")
  )

(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . babel-mode))
(add-hook 'babel-mode-hook 'mlb/babel-init)
(add-hook 'babel-mode-hook (lambda () (tern-mode t)))

(eval-after-load "tern"
  '(progn
     (add-to-list 'company-backends 'company-tern)))

(provide 'conf-js)
