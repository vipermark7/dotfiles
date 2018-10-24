(setq user-full-name "Shaffan")
(setq user-mail-address "shaffan1996@gmail.com")
(setq project-default-licence "GPL")
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))
(add-to-list 'package-archives '("marmalade". "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu". "http://elpa.gnu.org/packages/"))
(cua-mode t)
'(inhibit-startup-screen t)
(setq initial-frame-alist '(
			    (top . 30)
			    (left . 700)
			    (width . 212)
			    (height . 81)))


(package-initialize)
;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(if (eq system-type "windows-nt") setq inferior-lisp-program "C:\Program Files\clisp-2.48")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "527df6ab42b54d2e5f4eec8b091bd79b2fa9a1da38f5addd297d1c91aa19b616" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "021720af46e6e78e2be7875b2b5b05344f4e21fad70d17af7acfd6922386b61e" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" default)))
 '(package-selected-packages
   (quote
    (sly slime-company ace-window ace-link ace-jump-helm-line ac-cider auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap column-enforce-mode clomacs clean-aindent-mode base16-theme evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround expand-region exec-path-from-shell evil-visualstar golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse helm-flx helm-descbinds helm-cider helm-ag google-translate helm-themes helm-swoop helm-projectile helm-mode-manager helm-make highlight-parentheses highlight-numbers highlight-indentation linum-relative link-hint indent-guide hungry-delete hl-todo open-junk-file neotree multi-term move-text lorem-ipsum popwin persp-mode pcre2el paradox org-plus-contrib org-bullets toc-org spaceline slime restart-emacs request rainbow-delimiters which-key volatile-highlights vi-tilde-fringe uuidgen use-package gruvbox-theme gruvbox-theme paredit rainbow-identifiers ws-butler winum))))
(package-install-selected-packages)
(require 'evil)
(require 'paredit)
(evil-mode 1)
(paredit-mode 1) 


(visual-line-mode 1)
(show-paren-mode t)
(load-theme 'leuven 'no-confirm)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(rainbow-delimiters-mode)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


