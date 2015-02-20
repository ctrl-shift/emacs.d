;disables menu
(menu-bar-mode 0)

;remove splashscreen
(setq inhibit-splash-screen t)

;show collumn number
(setq-default column-number-mode t)

;add new package archives
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;"y" instead of "yes"
(fset 'yes-or-no-p 'y-or-n-p)

;configure speedbar
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)

;configure autocomplete in clojure buffers
(require 'cider)
(require 'ac-nrepl)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

(add-hook 'cider-repl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)

(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

(setq ac-auto-show-menu 0.2)

(global-auto-complete-mode t)

;show lines
(global-linum-mode t)

;hide unneeded nrepl buffers
;(setq nrepl-hide-special-buffers t)

;show matching and mismatching parentnesses
(show-paren-mode t)
;rainbow parens for nested parentnesses
(global-rainbow-delimiters-mode t)

;;fix scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;;add autopair for closing parens and etc auto-inserting 
(autopair-global-mode t)
(setq autopair-blink nil)

;ace jump mode for quickly navigating code
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-z") 'ace-jump-mode)

;whole line or region mode for deleting/copying whole line/region
(whole-line-or-region-mode t)

;ido for better buffer/file navigation
(require 'ido)
(ido-mode t)

;;configure themes
(setq custom-theme-directory "~/.emacs.d/themes/")
(setq custom-safe-themes t)
;; primary dark theme
(load-theme 'omega) 
;; set good font if avalaible 
(ignore-errors
  (set-face-attribute 'default nil :font "dejavu sans mono" :height 100))
;no tabs
(setq-default indent-tabs-mode nil)

;vala stuff
(defun valastuff ()
  (setq indent-tabs-mode nil
        c-basic-offset 2
        tab-width 2))
(add-hook 'vala-mode-hook 'valastuff)

(add-hook 'c-mode-common-hook
          (lambda ()
             (c-set-offset 'case-label '+)))

;;delete selected text on typing
(delete-selection-mode 1)

;erase buffer
(put 'erase-buffer 'disabled nil)
(global-set-key (kbd "<f9>") 'erase-buffer)

;setup backups
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;tabbar
(tabbar-mode t)
(setq tabbar-use-images nil)
(setq tabbar-separator (quote (0.8)))
;(setq tabbar-background-color "gray15")
(tabbar-mwheel-mode t)

(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label (if tabbar--buffer-show-groups
                   (format " [%s] " (tabbar-tab-tabset tab))
                 (format " %s " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))

(tabbar-mode 1)

(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)

