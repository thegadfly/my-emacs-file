;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;;packages

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" default)))
 '(package-selected-packages
   (quote
    (powerline-evil helm-c-yasnippet ac-helm helm company hlinum linum-relative ace-jump-mode ace-window airline-themes powerline yasnippet auto-complete autopair evil-commentary evil-surround evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;;;;;;;;;;theme 
(load-theme 'manoj-dark)
(set-face-attribute 'default nil :font "Consolas-12")


;;;;;;;;;;;autocomplete, autopair, yasnippet
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(require 'autopair)
(autopair-global-mode)
(add-to-list 'load-path
                "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;;;;;;;;;;;;;;evil mode
(require 'evil)
(evil-mode 1)
(require 'evil-surround)
(global-evil-surround-mode 1)
(require 'evil-commentary)
(evil-commentary-mode)


;;;;;;;;;;;;;;;;powerline
(require 'powerline)

(require 'airline-themes)
(load-theme 'airline-light)




;;;;;;;;; ace
(add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;; enable a more powerful jump back function from ace jump mode
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
;;If you use evil
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)
;;;ace windows
(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

;;;windmove
(windmove-default-keybindings)



;;;; line number
(require 'linum-relative)
(linum-on)
(linum-relative-on)
(global-linum-mode 1)
(setq linum-relative-current-symbol "")
;;(global-hl-line-mode)


;; helm configuration
(require 'helm)
(require 'helm-config)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) 
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
		

