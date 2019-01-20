;; ==== FIXES TO ORIGINAL PRELUDE BEHAVIOR ====

;;(global-whitespace-mode nil)
;;(whitespace-mode nil)
;;(add-hook 'window-setup-hook (lambda () (whitespace-mode nil)))


;; Clear Read-Only Buffers

(defun comint-clear-buffer ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

;; let's bind the new command to a keycombo
(define-key comint-mode-map "\C-c\M-o" #'comint-clear-buffer)

(show-paren-mode +1)

(add-hook 'window-setup-hook
          (lambda () (setq-default mode-line-format
                           (list
                            "%m: " ;`mode-name'
                            ;; buffer fullpath, line,
                            "%b, line %l"
                            " - width: "
                            (window-total-width)))))
