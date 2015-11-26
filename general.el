

;; Set the hyper key to be the fn button
;;(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

;; move border!
(load "~/.emacs.d/vendor/move-border" )
(require 'move-border)
(global-set-key (kbd "s-<up>") 'move-border-up)
(global-set-key (kbd "s-<down>") 'move-border-down)
(global-set-key (kbd "s-<left>") 'move-border-left)
(global-set-key (kbd "s-<right>") 'move-border-right)

;; quickest way to switch buffers
(global-set-key (kbd "H-x") 'next-buffer)
(global-set-key (kbd "H-z") 'previous-buffer)
(global-set-key (kbd "H-c") 'list-buffers)
(global-set-key (kbd "H-k") 'kill-buffer)

;; Clear Read-Only Buffers
(defun comint-clear-buffer ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

;; let's bind the new command to a keycombo
(define-key comint-mode-map "\C-c\M-o" #'comint-clear-buffer)


;; Define - Redo shortcut
(global-set-key (kbd "s-y") 'undo-tree-redo)

