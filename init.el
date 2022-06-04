(setq mac-pass-command-to-system nil)

(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1)   ; Disable the toolbar
(tooltip-mode -1)    ; Disable tooltips
(menu-bar-mode -1)   ; Disable the menu bar

(require 'package)

(setq package-archives nil)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(global-set-key [f8] 'neotree-toggle)
