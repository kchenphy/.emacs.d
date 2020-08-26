;;; -*- lexical-binding: t -*-

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(unless package--initialized (package-initialize))

(require 'org)

(setq kuantum/org-init-file "~/.emacs.d/emacs-init.org")

(org-babel-load-file (expand-file-name kuantum/org-init-file))
