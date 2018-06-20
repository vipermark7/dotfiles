(setq user-full-name "Shaffan")
(setq user-mail-address "shaffan1996@gmail.com")
(setq project-default-licence "GPL")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade". "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu". "http://elpa.gnu.org/packages/"))
(cua-mode t)
(inhibit-startup-screen t)
(show-paren-mode t)


(package-initialize)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299"
    "021720af46e6e78e2be7875b2b5b05344f4e21fad70d17af7acfd6922386b61e"
    "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0"
    default)))
 
 '(package-selected-packages
   (quote
    (gruvbox-theme gruvbox-themeu rainbow-identifiers ws-butler winum
 which-key volatile-highlights vi-tilde-fringe uuidgen
 toc-org spaceline slime restart-emacs request rainbow-delimiters
 popwin persp-mode pcre2el paradox org-plus-contrib org-bullets
 open-junk-file neotree multi-term move-text lorem-ipsum
 linum-relative link-hint indent-guide hungry-delete hl-todo
 highlight-parentheses highlight-numbers highlight-indentation
 helm-themes helm-swoop helm-projectile helm-mode-manager helm-make
 helm-flx helm-descbinds helm-cider helm-ag google-translate
 golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse
 expand-region exec-path-from-shell evil-visualstar
 evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround
 evil-search-highlight-persist evil-numbers evil-nerd-commenter
 evil-mc evil-matchit evil-lisp-state evil-indent-plus
 evil-iedit-state evil-exchange evil-escape evil-ediff evil-args
 evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word
 column-enforce-mode clomacs clean-aindent-mode base16-theme
 auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap
 ace-window ace-link ace-jump-helm-line ac-cider)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

