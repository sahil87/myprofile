;;In ~/.emacs.d/init.el or ~/.emacs (Using the latter currently)

(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
		("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" .     "http://stable.melpa.org/packages/")))

;; From Vivek
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(blink-cursor-mode 0)
;;(transient-mark-mode 0)

;;For help: C-h ? and F1
(setq inhibit-startup-message t)
;;(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(global-hl-line-mode 1)

;;Custom theme:
(custom-set-faces
 ;; '(default ((t (:foreground "#ffffff"  :background "gray9" :font "Source Code Pro"))))
 '(default ((t (:foreground "#ffffff"  :background "gray9"))))
 '(cursor  ((t (:background "white" ))))
 '(region  ((t (:foreground "black"  :background "white"))))

 '(highlight  ((t (:background "black"))))

 '(mode-line ((t (:foreground "white"  :background "cadet blue"))))
 '(fringe  ((t (:foreground "black" :background "black"))))


 '(font-lock-function-name-face ((t (:foreground "lemon chiffon"))))
 '(font-lock-variable-name-face ((t (:foreground "lemon chiffon"))))

 '(font-lock-keyword-face ((t (:foreground "CadetBlue1" :weight bold :slant italic))))
 '(font-lock-type-face ((t (:foreground "CadetBlue1" :weight bold :slant italic))))
 )

;;Smooth scrolling
(setq scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      Scroll-down-aggressively 0.01)
(setq-default scroll-up-aggressively 0.01
	      scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)

;;Transparency
(display-time) ;;Display time
(set-frame-parameter nil 'alpha '(100 100))
(defun toggle-transparency ()
   (interactive)
   (if (/= (cadr (frame-parameter nil 'alpha)) 100)
       (set-frame-parameter nil 'alpha '(100 100))
     (set-frame-parameter nil 'alpha '(85 0))))

(global-set-key (kbd "<f9>") 'toggle-transparency)

(setq visible-bell 1)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(setq minimap-window-location 'right)
