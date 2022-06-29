;;; bisqwit-theme.el --- bisqwit
;;; Version: 2.1
;;; Commentary:
;;; A Bisqwit-style theme
;;; Code:

(deftheme bisqwit "DOCSTRING for bisqwit")
  (custom-theme-set-faces 'bisqwit
   '(default ((t (:foreground "#a8a8a8" :background "#000000" ))))
   '(cursor ((t (:background "#d0e6df" ))))
   '(fringe ((t (:background "#000000" ))))
   '(mode-line ((t (:foreground "#000000" :background "#bebebc" ))))
   '(region ((t (:background "#504945" ))))
   '(secondary-selection ((t (:background "#3e3834" ))))
   '(font-lock-builtin-face ((t (:foreground "#a8a8a8" ))))
   '(font-lock-comment-face ((t (:foreground "#ba5757" ))))
   '(font-lock-function-name-face ((t (:foreground "#a8a8a8" ))))
   '(font-lock-keyword-face ((t (:foreground "#f8f8f8" ))))
   '(font-lock-string-face ((t (:foreground "#3a4a8b" ))))
   '(font-lock-type-face ((t (:foreground "#f8f8f8" ))))
   '(font-lock-constant-face ((t (:foreground "#a8a8a8" ))))
   '(font-lock-variable-name-face ((t (:foreground "#a8a8a8" ))))
   '(minibuffer-prompt ((t (:foreground "#000000" :background "#bebebc" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "#3a4a8b" :bold t ))))
   '(highlight-numbers-number ((t (:foreground "#9354d9"))))
   '(setq display-line-numbers-type nil)
   '(global-display-line-numbers-mode)
;  '(c++_highlight_face ((t (:foreground "#97ab45"))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))

;; Automatically add this theme to the load path

(provide-theme 'bisqwit)

;;; bisqwit-theme.el ends here



