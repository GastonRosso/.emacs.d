;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off startup message
(setq inhibit-startup-message t)

;; Font settings
(set-default-font "Droid Sans Mono 12")

;; Show line numbers
(global-linum-mode 1)
