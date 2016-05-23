;;In ~/.emacs.d/init.el or ~/.emacs (Using the latter currently)

(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
		("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" .     "http://stable.melpa.org/packages/")))

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
