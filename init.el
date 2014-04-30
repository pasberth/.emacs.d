; ----------------------------------------
; misc
; ----------------------------------------

(require 'cl)

(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

(custom-set-variables
  '(make-backup-files nil)
  '(auto-save-default nil))

(setq-default indent-tabs-mode nil)
(setq c-basic-offset 2)

; ----------------------------------------
; el-get
; ----------------------------------------

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

; ----------------------------------------
; cli-lib
; ----------------------------------------

(el-get 'sync 'cl-lib)

; ----------------------------------------
; auto-complete
; ----------------------------------------

(el-get 'sync 'auto-complete)

; ----------------------------------------
; anything
; ----------------------------------------

(el-get 'sync 'anything)
(require 'anything)
(require 'anything-config)

; ----------------------------------------
; helm
; ----------------------------------------

;(el-get 'sync 'helm)
;(require 'helm)
;(require 'helm-config)
;(global-set-key (kbd "C-c h") 'helm-mini)
;(helm-mode t)

; ----------------------------------------
; undo-tree
; ----------------------------------------

(el-get 'sync 'undo-tree)
(global-undo-tree-mode)

; ----------------------------------------
; magit
; ----------------------------------------

(el-get 'sync 'magit)
(require 'magit)

; ----------------------------------------
; user libraries
; ----------------------------------------

(add-to-list 'load-path "~/.emacs.d/lib")

; ----------------------------------------
; theme
; ----------------------------------------

(require 'githublike-theme)

; ----------------------------------------
; haskell
; ----------------------------------------

(el-get 'sync 'haskell-mode)
(el-get 'sync 'structured-haskell-mode)
(require 'haskell-mode)
(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)
(set-face-background 'shm-current-face "#eeeeff")
(set-face-background 'shm-quarantine-face "#ff8888")

; ----------------------------------------
; JavaScript
; ----------------------------------------

(el-get 'sync 'js2-mode)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

; ----------------------------------------
; term+
; ----------------------------------------

(el-get 'sync 'term+)
(require 'term+)

; ----------------------------------------
; ProofGeneral
; ----------------------------------------

(el-get 'sync 'ProofGeneral)
