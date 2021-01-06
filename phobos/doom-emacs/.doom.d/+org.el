;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")

(after! org

  (defun hrs/mark-done-and-archive ()
    "Mark the state of an org-mode item as DONE and archive it."
    (interactive)
    (org-todo 'done)
    (org-archive-subtree))

  (defun org-file-path (filename)
    "Return the absolute address of an org file, given its relative name."
    (concat (file-name-as-directory org-directory) filename))

  (map! :map org-mode-map
        :localleader
        "m" #'hrs/mark-done-and-archive)

  (setq
   org-startup-folded t
   org-startup-indented t
   org-catch-invisible-edits 'error
   org-hide-leading-stars t
   org-list-allow-alphabetical t
   org-pretty-entities t
   org-ellipsis "⤵"
   org-todo-keywords
   '((sequence "TODO(t)" "WAIT(w)" "DONE(d)"))
   org-archive-location
   (concat (org-file-path "archive.org") "::* From %s")
   org-log-done 'time
   org-enforce-todo-dependencies t
   org-enforce-todo-checkbox-dependencies t)
  )
