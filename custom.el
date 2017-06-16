(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-scratch-message
   ";; This can't be saved, but can evaluate Lisp.
;; If you want to create a file, visit that file with C-x C-f,
;; To check and change any config/command C-h v
;; ...

")
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(neo-show-hidden-files t)
 '(tab-width 2))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
