

(defun iterm-goto-filedir-or-home ()
  "Go to present working dir and focus iterm"
  (interactive)
  (do-applescript
   (concat
    " tell application \"iTerm\"\n"
    "   tell the current session of current window\n"
    (format "     write text \"cd %s\" \n"
            ;; string escaping madness for applescript
            (replace-regexp-in-string "\\\\" "\\\\\\\\"
                                      (shell-quote-argument (or default-directory "~"))))
    "   end tell\n"
    " end tell\n"
    " do shell script \"open -a iTerm\"\n"
      ))
    )


(defun iterm-from-windmove ()
  "on rightmost S-right (shift - arrow right) open iTerm2"
  (interactive)
  (condition-case err
      (windmove-right)

    
  ;; (setq movemsg )
  (message "kot fare")
  (message movemsg)
  )
