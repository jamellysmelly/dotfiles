(package-initialize)

(show-paren-mode t)
(setq column-number-mode t)
(setq make-backup-files nil)
(global-linum-mode 1)
(scroll-bar-mode 0)
(show-paren-mode 1)
(auto-save-mode 0)
(cua-mode t)

(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


