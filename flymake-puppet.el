(require 'flymake-easy)

(defconst flymake-puppet-err-line-patterns
  '(("\\(.*line \\([0-9]+\\).*\\)" nil 2 nil 1)
    ("\\(.*.rb:[0-9]+.*\\)" nil nil nil 1)))

(defvar flymake-puppet-executable "puppet-lint"
  "The executable to use for puppet-lint")

(defun flymake-puppet-command (filename)
  "Construct a command that flymake can use to check puppet source."
      (list flymake-puppet-executable filename))

;;;###autoload
(defun flymake-puppet-load ()
  "Configure flymake mode to check the current buffer's puppet syntax."
  (interactive)
  (flymake-easy-load 'flymake-puppet-command
                     flymake-puppet-err-line-patterns
                     'tempdir
                     "pp"))

(provide 'flymake-puppet)
