(require 'package)
(add-to-list 'package-archives
'("melpa"     . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(add-to-list 'load-path "/home/vipermk7/Desktop/slime")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")
