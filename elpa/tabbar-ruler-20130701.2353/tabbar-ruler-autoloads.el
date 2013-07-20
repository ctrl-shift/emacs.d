;;; tabbar-ruler-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (tabbar-ruler-move tabbar-ruler-backward tabbar-ruler-forward
;;;;;;  tabbar-ruler-up tabbar-install-faces) "tabbar-ruler" "tabbar-ruler.el"
;;;;;;  (20951 6590 496746 628000))
;;; Generated autoloads from tabbar-ruler.el

(autoload 'tabbar-install-faces "tabbar-ruler" "\
Installs faces for a frame.

\(fn &optional FRAME)" t nil)

(autoload 'tabbar-ruler-up "tabbar-ruler" "\
Tabbar press up key.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-forward "tabbar-ruler" "\
Forward ruler. Takes into consideration if the home-key was pressed.
This is based on the variable `tabbar--buffer-show-groups'

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-backward "tabbar-ruler" "\
Backward ruler.  Takes into consideration if the home-key was pressed.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-move "tabbar-ruler" "\
Start the movement for the tabbar

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("tabbar-ruler-pkg.el") (20951 6590 589066
;;;;;;  994000))

;;;***

(provide 'tabbar-ruler-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tabbar-ruler-autoloads.el ends here
