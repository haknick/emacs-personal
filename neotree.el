
(defcustom neo-window-width 35
  "*Specifies the width of the NeoTree window."
  :type 'integer
  :group 'neotree)


;; always show neotree hidden files
'(setq-default neo-show-hidden-files t)

(add-hook 'after-init-hook #'neotree-toggle)

