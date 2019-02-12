;;; package --- Summary

;; Set the hyper key to be the fn button
;;(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

;; move border!
(load "~/.emacs.d/personal/vendor/move-border" )
(require 'move-border)
;;; Code
(global-set-key (kbd "C-s-<up>") 'move-border-up)
(global-set-key (kbd "C-s-<down>") 'move-border-down)
(global-set-key (kbd "C-s-<left>") 'move-border-left)
(global-set-key (kbd "C-s-<right>") 'move-border-right)

(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<right>") 'move-end-of-line)

;; quickest way to switch buffers
(global-set-key (kbd "H-x") 'next-buffer)
(global-set-key (kbd "H-z") 'previous-buffer)
(global-set-key (kbd "H-b") 'list-buffers)
;;(global-set-key (kbd "<triple-wheel-right>") 'next-buffer)
;;(global-set-key (kbd "<triple-wheel-left>") 'previous-buffer)
;;(global-set-key (kbd "<double-wheel-right>") 'next-buffer)
;;(global-set-key (kbd "<double-wheel-left>") 'previous-buffer)

(global-set-key (kbd "H-n") 'neotree-change-root)

(global-set-key (kbd "H-c") 'scroll-lock-mode)
(global-set-key (kbd "H-k") 'kill-this-buffer)
;;(global-set-key (kbd "H-f") 'find-file)

;; move the cursor to the pane -- HIGHLY DISCOURAGED EVERYWHERE
;;(global-set-key (kbd "H-right") 'windmove-right)
;;(global-set-key (kbd "H-left") 'windmove-left)
;;(global-set-key (kbd "H-up") 'windmove-left)
;;(global-set-key (kbd "H-down") 'windmove-left)

;; Shift-right on rightmost pane should focus on iTerm2
(global-set-key (kbd "S-<right>") 'iterm-from-windmove)

;; Define - Redo shortcut
(global-set-key (kbd "s-Z") 'undo-tree-redo)

;;(global-set-key (kbd "C-x g") 'undo-tree-redo)

(global-set-key (kbd "H-j") 'xref-find-definitions-other-frame)
