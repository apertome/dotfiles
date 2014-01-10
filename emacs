;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

;; tab-width 4
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

(setq auto-mode-alist
      (cons '("\\.t$" . perl-mode) auto-mode-alist))

;; mouse support, including clicking, selection, and scrollwheel
;; from http://stackoverflow.com/questions/5710334/how-can-i-get-mouse-selection-to-work-in-emacs-and-iterm2-on-mac
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
;; comment out mouse-select mode for now (seems buggy)
; (setq mouse-sel-mode t)
(global-set-key [mouse-4] '(lambda ()
                            (interactive)
                            (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                            (interactive)
                            (scroll-up 1)))


(defun smart-line-beginning ()
  "Move point to the beginning of text on the current line; if that is already
the current position of point, then move it to the beginning of the line."
  (interactive)
  (let ((pt (point)))
    (beginning-of-line-text)
    (when (eq pt (point))
      (beginning-of-line))))

(eval-after-load 'js 
     '(define-key js-mode-map (kbd "C-a") 'smart-line-beginning))

(eval-after-load "perl-mode"
     '(define-key perl-mode-map (kbd "C-a") 'smart-line-beginning))

