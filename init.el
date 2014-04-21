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
