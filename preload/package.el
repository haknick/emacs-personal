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

;; major mode for editing web templates
(use-package web-mode
  :ensure web-mode)

;; This is nice but can't get it to work with js2-mode
;;(use-package prettier-js
;; :ensure prettier-js)
;;(prettier-js-mode 0)

;; ---- flycheck mode ----
;; http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html
(use-package flycheck
  :ensure flycheck
  :init (global-flycheck-mode))
(require 'flycheck)

;; ---- ivy (typeahead completions) ----
(use-package ivy
  :ensure ivy)
(ivy-mode 1)

(use-package company
  :ensure company
  :init (global-company-mode))
(require 'company)

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck))

;; (use-package
;;   :ensure )
