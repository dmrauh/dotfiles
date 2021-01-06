;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+org")
(load! "+prog")

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Dominik Michael Rauh"
      user-mail-address "dmrauh@posteo.de")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 22 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "sans" :size 22))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-dark)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(setq doom-localleader-key ",")

(global-whitespace-mode +1)

(setq-default show-trailing-whitespace t)

(add-hook 'minibuffer-setup-hook
          (lambda () (setq-local show-trailing-whitespace nil)))

(defun alternate-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun alternate-window ()
  "Switch back and forth between current and last window in the current frame."
  (interactive)
  (let (;; switch to first window previously shown in this frame
        (prev-window (get-mru-window nil t t)))
    ;; Check window was not found successfully
    (unless prev-window (user-error "Last window not found."))
    (select-window prev-window)))

(map!
 :leader "w/" #'evil-window-vsplit
 :leader "w-" #'evil-window-split
 :leader :desc "Save all open files" "fS" #'evil-write-all
 :leader :desc "Mark buffer as done and close" "fq" #'server-edit
 :leader "TAB SPC" #'alternate-buffer
 :leader "w TAB" #'alternate-window)
