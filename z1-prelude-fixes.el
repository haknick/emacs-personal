;; ==== FIXES TO ORIGINAL PRELUDE BEHAVIOR ====

;; (global-whitespace-mode nil)


;; ;; Clear Read-Only Buffers
;; (defun comint-clear-buffer ()
;;   (interactive)
;;   (let ((comint-buffer-maximum-size 0))
;;     (comint-truncate-buffer)))

;; ;; let's bind the new command to a keycombo
;; (define-key comint-mode-map "\C-c\M-o" #'comint-clear-buffer)
