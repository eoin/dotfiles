;; textmate mode
(vendor 'textmate)
(textmate-mode)

;; ruby
(vendor 'ruby-mode)

;; rspec
(vendor 'rspec-mode)

;; haml and sass
(autoload 'haml-mode "haml-mode.el"
   "Major mode for editing Haml files" t)
(setq auto-mode-alist (cons '("\\.haml" . haml-mode) auto-mode-alist))
 
(autoload 'sass-mode "sass-mode.el"
   "Major mode for editing Sass files" t)
(setq auto-mode-alist (cons '("\\.sass" . sass-mode) auto-mode-alist))
