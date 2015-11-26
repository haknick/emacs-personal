

;; (setq ansi-color-names-vector
;;      ["black" "red" "green" "yellow" "PaleBlue" "magenta" "cyan" "white"])



(defun my-enable-term-line-mode (&rest ignored)
  (term-line-mode))

(advice-add 'ansi-term :after #'my-enable-term-line-mode)
(advice-add 'term :after #'my-enable-term-line-mode)
