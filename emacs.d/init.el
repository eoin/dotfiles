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
(when (functionp 'scroll-bar-mode) (scroll-bar-mode))

;; dont show the GNU splash screen
(setq inhibit-startup-message t)

(vendor 'maxframe)
(vendor 'ack)

