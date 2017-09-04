
(defcustom neo-window-width 35
  "*Specifies the width of the NeoTree window."
  :type 'integer
  :group 'neotree)


;; Do now show neotree hidden files
'(neo-show-hidden-files t)

(add-hook 'after-init-hook #'neotree-toggle)

