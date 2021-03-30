(setq user-full-name "Shaffan")
(setq user-mail-address "shaffan1996@gmail.com")

(require 'package)
(setq package-check-signature nil)
(package-initialize)
(package-refresh-contents)
(cua-mode t)
(visual-line-mode t)

(setq package-archives
    ("gnu" . "https://elpa.gnu.org/packages/")
    ("melpa" . "https://melpa.org/packages/"))

;; set tab width to 4 spaces
(setq default-tab-width 4)
(setq inhibit-startup-screen t)
(setq initial-frame-alist '(
			    (top . 30)
			    (left . 70)
			    (width . 70)
			    (height . 30)))


(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;; Set your lisp system and, optionally, some contribs
(setq slime-contribs '(slime-fancy))
(setq inferior-lisp-program (executable-find "racket"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cider xref-js2 smartparens rainbow-delimiters parinfer-rust-mode paredit js2-refactor evil base16-theme)))
(package-install-selected-packages)
(require 'evil)
(require 'paredit)
(evil-mode 1)
y(paredit-mode 1) 
(global-linum-mode 1)

(visual-line-mode 1)
(show-paren-mode t)
(load-theme 'base16-onedark 'no-confirm)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(rainbow-delimiters-mode)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#00002a" :foreground "#d0d0fa" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Fira Mono")))))


