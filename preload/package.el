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

;;; Expand-region
(use-package fsharp-mode
   :ensure fsharp-mode)

(use-package neotree
   :ensure neotree)

(use-package cider
  :ensure fsharp-mode)

(use-package clj-refactor
  :ensure fsharp-mode)


;(use-package
;   :ensure )
