; custom place to save customizations
(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file)

;; load
(load "elisp/util")
(load "elisp/theme")
(load "elisp/modes")
(load "elisp/buffers")
(load "elisp/temp")

;; remove chrome
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; dont show the GNU splash screen
(setq inhibit-startup-message t)

;; misc utils
(vendor 'maxframe)
(vendor 'ack)
