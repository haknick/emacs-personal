(require 'package)


;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives '("popkit" . "http://elpa.popkit.org/packages/"))
(package-refresh-contents)
(package-initialize)

(if (not (package-installed-p 'use-package))
   (progn
     (package-refresh-contents)
     (package-install 'use-package)))

(require 'use-package)
(package-refresh-contents)
(package-initialize)


;;; ==== PACKAGES TO LOAD ====

;; ---- neotree ----
(use-package neotree
  :ensure neotree)

;; ---- js2-mode ----
;; https://emacs.cafe/emacs/javascript/setup/2017/04/23/emacs-setup-javascript.html
(use-package js2-mode
  :ensure js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
;; powerful refactorings
(use-package js2-refactor
  :ensure js2-refactor)
;; jump to function references or definitions
(use-package xref-js2
  :ensure xref-js2)
;; keybindings
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)
;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so unbind it.
(define-key js-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda () (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;; ---- company-mode and tern ----
;; https://emacs.cafe/emacs/javascript/setup/2017/05/09/emacs-setup-javascript-2.html
(use-package company-mode
  :ensure company-mode)
(use-package company-tern
  :ensure company-tern)
(call-process-shell-command "npm install -g tern" nil 0)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda () (tern-mode) (company-mode)))
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)


;; (use-package
;;   :ensure )
