
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;;(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset indent-val)))
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(setq js2-mode-indent-ignore-first-tab 1)


;; Refactoring and Definitions
;; https://emacs.cafe/emacs/javascript/setup/2017/04/23/emacs-setup-javascript.html
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(defvar js2-mode-map)
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)
;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so unbind it.
(defvar js-mode-map)
(define-key js-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda () (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
;; make sure space indentation for js2-mode is set here
;; ideally this should come from eslint but don't know how to do that yet
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 4)))


;; === Taken from: http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html ===

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defvar flycheck-javascript-eslint-executable)
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
