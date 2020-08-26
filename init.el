;;; -*- lexical-binding: t -*-

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(unless package--initialized (package-initialize))

(require 'org)

(dolist
    (org-file (directory-files "~/.emacs.d" t "org"))
  (org-babel-load-file org-file)
  )
