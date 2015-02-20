(deftheme omega
  "Created 2013-08-23.")

(custom-theme-set-faces
 'omega
 '(default ((t (:inherit nil :stipple nil :background "gray7" :foreground "gray88" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(custom-button ((t (:background "gray17" :foreground "gray92" :box (:line-width 2 :style released-button)))))
 '(custom-button-mouse ((t (:background "gray50" :foreground "black" :box (:line-width 2 :style released-button)))))
 '(font-lock-comment-face ((t (:foreground "gray55"))))
 '(font-lock-constant-face ((t (:foreground "light sky blue"))))
 '(font-lock-function-name-face ((t (:foreground "LightBlue2"))))
 '(font-lock-keyword-face ((t (:foreground "LightGoldenrod1"))))
 '(font-lock-string-face ((t (:foreground "salmon"))))
 '(isearch ((t (:background "midnight blue" :foreground "gray75"))))
 '(link ((t (:foreground "LightGoldenrod1" :underline t))))
 '(minibuffer-prompt ((t (:foreground "LightGoldenrod2"))))
 '(mode-line ((t (:background "gray15" :foreground "gray88" :box (:line-width -1 :style released-button)))))
 '(popup-face ((t (:background "gray25" :foreground "gray88"))))
 '(popup-menu-selection-face ((t (:background "gray12" :foreground "white"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "NavajoWhite4"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light steel blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "RosyBrown4"))))
 '(show-paren-match ((t (:foreground "sandy brown" :background nil))))
 '(show-paren-mismatch ((t (:foreground "red" :background nil))))
 '(region ((t (:background "gray16"))))
 '(font-lock-type-face ((t (:foreground "NavajoWhite3"))))
 '(ido-subdir ((t (:foreground "wheat"))))
 '(tool-bar ((t (:background "gray15" :box (:line-width 1 :style released-button)))))
 '(tabbar-button ((t (:inherit tabbar-default :background "#203040" :foreground "yellow" :box (:line-width 1 :color "gray15" :style released-button) :family "DejaVu Sans Mono"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-button :foreground "gold"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "gray17" :foreground "gray90" :height 1.15))))
 '(tabbar-highlight ((t (:foreground "light goldenrod"))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#102030" :foreground "light goldenrod yellow" :box (:line-width 1 :style released-button)))))
 '(tabbar-separator ((t (:background "gray15"))))
 '(tabbar-unselected ((t (:inherit tabbar-default :box (:line-width 1 :style released-button)))))
 '(tabbar-highlight ((t (:foreground "light goldenrod"))))
 '(tabbar-modified ((t (:inherit tabbar-default :box (:line-width 1 :style released-button) :overline "goldenrod3"))))
)

(custom-theme-set-variables
 'omega
 '(tabbar-background-color "gray15"))

(provide-theme 'omega)
