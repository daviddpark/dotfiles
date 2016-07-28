(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1f392dc4316da3e648c6dc0f4aad1a87d4be556c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'tango-dark)

(defun ensure-package-installed (&rest packages)
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
	 nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
	   (package-install package)
	 package)))
   packages))

(or (file-exists-p package-user-dir) (package-refresh-contents))

(ensure-package-installed 'ag 'magit 'cider 'ess 'js2-mode 'ac-js2 'yasnippet 'auto-complete)

(package-initialize)

;; Cider Configuration
(add-hook 'cider-mode-hook #'eldoc-mode)
(setq nrepl-log-messages t)
;;(setq nrepl-hide-special-buffers t)


;; Show corresponding sexp delimiter
(show-paren-mode 1)

;; clj files get clojure-mode, paredit-mode, paxedit-mode
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'paxedit-mode)
(add-hook 'javascript-mode-hook 'paredit-mode)
;;(add-to-list 'auto-mode-alist '("\\.Rmd$" . inferior-ess-mode))

;; JavaScript Mode
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

(setq js2-highlight-level 3)

(require 'yasnippet)
(setq yas-global-mode 1)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(defun paredit-nonlisp ()
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(add-hook 'js-mode-hook 'paredit-nonlisp)

;;(eval-after-load 'js
;;  '(progn (define-key js-mode-map "{" 'paredit-open-curly)
;;	  (define-key js-mode-map "}" 'paredit-close-curly-and-newline)))
;;I can do magit...
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
