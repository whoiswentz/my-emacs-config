(defun global-unset-all-super-key ()
  "Will unset any single key in global keymap that has the super
modifier."
  (let ((km (current-global-map)))
    (while km
      (let ((maybe-event (and (listp (car km))
                              (caar km))))
        (if (and (eventp maybe-event) ; Also filters maybe-event when
                                      ; nil because (car km) was not a list.
                 (memq 'super (event-modifiers maybe-event)))
            (global-unset-key (vector maybe-event))))
      (setq km (cdr km)))))


(when (string-equal system-type "darwin")
  (global-unset-all-super-key))

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
