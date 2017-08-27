;;In ~/.emacs.d/init.el or ~/.emacs (Using the latter currently)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
		("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" .     "http://stable.melpa.org/packages/")))

;; From Vivek
;;(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
;;(blink-cursor-mode 0)
;;(transient-mark-mode 0)

;;For help: C-h ? and F1
(setq inhibit-startup-message t)
;;(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(global-hl-line-mode 1)

;;Custom theme:
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#ffffff" :background "gray9"))))
 '(cursor ((t (:background "white"))))
 '(font-lock-function-name-face ((t (:foreground "lemon chiffon"))))
 '(font-lock-keyword-face ((t (:foreground "CadetBlue1" :weight bold :slant italic))))
 '(font-lock-type-face ((t (:foreground "CadetBlue1" :weight bold :slant italic))))
 '(font-lock-variable-name-face ((t (:foreground "lemon chiffon"))))
 '(fringe ((t (:foreground "black" :background "black"))))
 '(highlight ((t (:background "black"))))
 '(mode-line ((t (:foreground "white" :background "cadet blue"))))
 '(region ((t (:foreground "black" :background "white")))))

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

(projectile-mode)

(add-to-list 'load-path "~/code/code-sync/neotree")
(require 'neotree)
(setq neo-smart-open t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (minimap projectile))))

(setq projectile-switch-project-action 'neotree-projectile-action)

(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))

(global-set-key [f8] 'neotree-project-dir)
