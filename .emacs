
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("MELPA" . "https://melpa.org/packages/"))
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Ido
(require 'ido)
(ido-mode 1)

;; Fonts
(add-to-list 'bdf-directory-list "~/emacs.d/fonts")

;; Design
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-default-font "Ubuntu Mono-16")
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

;; Compilation
(setq default-directory "~/Projects/npc/")

;; Window moves
(windmove-default-keybindings 'meta)

;; C/C++ mode
;(defun my-c-mode-common-hook ()
; ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
; (c-set-offset 'substatement-open 0)
; ;; other customizations can go here
;
; (setq c++-tab-always-indent t)
; (setq c-basic-offset 4)                  ;; Default is 2
; (setq c-indent-level 4)                  ;; Default is 2
;
; (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
; (setq tab-width 4)
; (setq indent-tabs-mode t)  ; use spaces only if nil
; )
;
					;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

(add-hook 'c++-mode-hook 'highlight-numbers-mode)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; 6502
(load "~/.emacs.d/acme-mode")
(add-to-list 'auto-mode-alist '("\\.acme\\'" . acme-mode))

;; Smex
;(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Lisp specific defuns

(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

(global-set-key (kbd "C-c C-e") 'eval-and-replace)

;; Multiple cursors
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Polar
(add-to-list 'load-path "/home/nico/Projects/npc/editor")
(require 'polar-mode)
(add-to-list 'auto-mode-alist '("\\.polar\\'" . polar-mode))

;; Nice
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)

;; Zenburn
;;(load-theme 'zenburn t)
(load-theme 'gruber-darker t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (gruber-darker)))
 '(custom-safe-themes
   (quote
    ("9040edb21d65cef8a4a4763944304c1a6655e85aabb6e164db6d5ba4fc494a04" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "468a6624a46ae38357a51dc7f87075331e5ee6ec6d69304d804022683242c2aa" "d5e3d6a1d5566fea57804ae2a969d2eb12c0fb427f1579f4fc199b0fe973fad9" "f520db3ce87dcf70ae4fb6888f4c9bc9c9cb1676376eec811d0a10b370ac9482" "2c3e5273e98b3fcf7a5104dee8fda87b66dafec32f6def64fc641fe079380b82" "a98f889a0ad18c99c29f16e687dfd75142ae390a1790d0ae243872aaa84358ca" "9cf8d0a65c49b099d03609f9f7619c6fbc736b6b99a225bee358f432ceb48a88" "360d07b85fdd00dc3b1ed08a15a090b821fbb2de7269e84830eb8b21ae13a7fb" "442e2579e24eb62e532ced2e2ffeacb1be0e4561ba5b4fab723c0c1791c613c5" "b6754d0212841381d1ce0401c615b445a76fcba958effb3c87556712c7d0d5fb" "4d497dc2aa6ca5d8b528097815e8e39bcb055cd4c045b11ed40b26cd7ded2c4e" "39415124548d2c515dd1557b02f0ab60438d89700563c3b35f6eb646e222f753" "c02d79c64070b3cf602fa0da1b5d046e02d8c08e755fb6b5dc8d4081c8469682" "53cf966ed57f7f551dffff806096e30868960eefdd5fe109a2ca486d4f09b83a" "ffa809f97c26067a70dc1d7ed9378e01c50289f7d0eba6464419ea210d08f872" "a7c4a75ce35c70710a02859a3fdafad56b9a148c7ceeb21c1424a558d8621732" "c6858e29404124a25595eb53560682e590ef90cdad97239a232700912ec83ce5" "5ae374588e7eb50a729b76510d6b5762d07262575d18ffd2924513cb636a2f17" "d6bf14fa23e607daafb6e2749149640c8902a400ee7ea618d8d9d020e735c19a" "df4c39c6aa1e5e1ea4a6cc1d9d85132d35719c53b83a70ebcdaf0f4318562d27" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "5a00018936fa1df1cd9d54bee02c8a64eafac941453ab48394e2ec2c498b834a" "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "06ed754b259cb54c30c658502f843937ff19f8b53597ac28577ec33bb084fa52" "e266d44fa3b75406394b979a3addc9b7f202348099cfde69e74ee6432f781336" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "a131602c676b904a5509fff82649a639061bf948a5205327e0f5d1559e04f5ed" "e8567ee21a39c68dbf20e40d29a0f6c1c05681935a41e206f142ab83126153ca" "2ce76d65a813fae8cfee5c207f46f2a256bac69dacbb096051a7a8651aa252b0" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "f00a605fb19cb258ad7e0d99c007f226f24d767d01bf31f3828ce6688cbdeb22" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" "9e3ea605c15dc6eb88c5ff33a82aed6a4d4e2b1126b251197ba55d6b86c610a1" default)))
 '(display-line-numbers t)
 '(fci-rule-color "#383838")
 '(frame-brackground-mode (quote dark))
 '(global-display-line-numbers-mode nil)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (quote
    ("#3b2b40b432a2" "#07ab45f74cea" "#475833eb3555" "#1d633c04567f" "#2d5443d9332c" "#436f35f83167" "#0613413f597e")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(line-number-mode t)
 '(lsp-ui-doc-border "#93a1a1")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (evil bisqwit-minor-mode bisqwit bisqwit-theme bisqwit-mode highlight-chars highlight-numbers parent-mode c++theme-theme kaolin-themes solarized-theme move-text multiple-cursors magit gruber-darker-theme zenburn-theme)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#F3E7D3")
 '(pos-tip-foreground-color "#79716c")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(truncate-lines t)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

;; Stuff
(global-font-lock-mode 1)
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c++face ((t (:foreground "green")))))

(defgroup c++-highlight-group nil
  "Group for c++ customization"
  :prefix "c++-highlight-")

(defface c++-highlight-specials1-face
  '((t :inherit (default)
       :foreground "#17bc19"))
  "Face for special 1 characters"
  :group 'c++-highlight-group )

(defface c++-highlight-specials2-face
  '((t :inherit (default)
       :foreground "#009d9d"))
  "Face for special 2 characters"
  :group 'c++-highlight-group )

(defvar c++-highlight-keywords '(
  ("\\[" . 'c++-highlight-specials1-face)
  ("\\]" . 'c++-highlight-specials1-face)
  ("\{"  . 'c++-highlight-specials1-face)
  ("\}"  . 'c++-highlight-specials1-face)
  (";"   . 'c++-highlight-specials1-face)
  (","   . 'c++-highlight-specials1-face)
  ("="   . 'c++-highlight-specials1-face)
  ("+="  . 'c++-highlight-specials1-face)

  ("("   . 'c++-highlight-specials2-face)
  (")"   . 'c++-highlight-specials2-face)
  ("\\+" . 'c++-highlight-specials2-face)
  ("-"   . 'c++-highlight-specials2-face)
  ("\\*" . 'c++-highlight-specials2-face)
  ("\\/" . 'c++-highlight-specials2-face)
  ("\\?" . 'c++-highlight-specials2-face)
  (">"   . 'c++-highlight-specials2-face)
  ("<"   . 'c++-highlight-specials2-face)
  (">="  . 'c++-highlight-specials2-face)
  ("<="  . 'c++-highlight-specials2-face)
  ("\\+\\+"  . 'c++-highlight-specials2-face)
  ("--"  . 'c++-highlight-specials2-face)
  ("&&"  . 'c++-highlight-specials2-face)
  ("\\|\\|"  . 'c++-highlight-specials2-face)
)
  "Keywords for bisqwit-minor-mode highlighting")

(define-minor-mode c++-highlight-mode
  "Toggle minor mode for bisqwit style C++"
  nil
  ;:init-value nil
;  :global t
  :lighter " HC++"
  :group 'c++-highlight-group
  (when c++-highlight-mode
    (font-lock-add-keywords nil c++-highlight-keywords)
    (font-lock-fontify-buffer)
    )

  (when (not c++-highlight-mode)
    (font-lock-remove-keywords nil c++-highlight-keywords)
    (font-lock-fontify-buffer)
    )
  )

;(add-hook 'c++-mode 'bisqwit-minor-mode)

(make-variable-buffer-local
  (defvar bisqwit-mode nil
    "Toggle bisqwit-style emacs."))

(defun bisqwit-mode (&optional ARG)
  (interactive (list 'toggle))
  (setq bisqwit-mode
        (if (eq ARG 'toggle)
            (not bisqwit-mode)
          (> ARG 0)))

  (if bisqwit-mode
      (progn
;        (message "Active!")
        (disable-theme 'gruber-darker)
        (enable-theme 'bisqwit)
        (set-default-font "-IBM-IBM BIOS 32x32 WSPACE-normal-normal-normal-*-32-*-*-*-c-320-iso10646-1")
	(hc-toggle-highlight-trailing-whitespace)
        (setq display-line-numbers nil)
        ;(set-frame-font "-IBM-IBM BIOS 32x32 WSPACE-normal-normal-normal-*-32-*-*-*-c-320-iso10646-1" nil t)
	)
    (progn
;     (message "disable")
      (disable-theme 'bisqwit)
      (enable-theme 'gruber-darker)
      (set-default-font "Ubuntu Mono-16")
      hc-toggle-highlight-trailing-whitespace
      (setq display-line-numbers t)
      )
    )
  )

(load-theme 'bisqwit t t)

(add-hook 'c++-mode-hook 'c++-highlight-mode)

;(define-globalized-minor-mode bisqwit-global-minor-mode bisqwit-minor-mode bisqwit-minor-mode :group 'bisqwit-group)
;(bisqwit-global-minor-mode 1)

