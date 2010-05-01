;; textmate mode
(vendor 'textmate)
(textmate-mode)

;; js2
; note, byte compile with: `emacs --batch --eval '(byte-compile-file "js2.el")'
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; coffee-script
(vendor 'coffee-mode)
(setq auto-mode-alist (cons '("\\.coffee$" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Cakefile" . coffee-mode) auto-mode-alist))

; set tab width 2 for coffee-mode
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; haml and sass
(autoload 'haml-mode "haml-mode.el"
   "Major mode for editing Haml files" t)
(setq auto-mode-alist (cons '("\\.haml" . haml-mode) auto-mode-alist))
 
(autoload 'sass-mode "sass-mode.el"
   "Major mode for editing Sass files" t)
(setq auto-mode-alist (cons '("\\.sass" . sass-mode) auto-mode-alist))

