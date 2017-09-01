

(defconst indent-val 4 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-scratch-message
   ";; This can't be saved, but can evaluate Lisp.
    ;; If you want to create a file, visit that file with C-x C-f,
    ;; To check and change any config/command C-h v
    ;; ..."
  )

 ;; Setup indent levels
 '(js-indent-level indent-val)
 '(js2-basic-offset indent-val)
 '(tab-width indent-val)

 ;; finish custom-set-variables
 )

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset indent-val)))

;; Do now show neotree hidden files
'(neo-show-hidden-files t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
