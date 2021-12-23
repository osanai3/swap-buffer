;;; swap-buffer.el --- swap buffer with next window -*- lexical-binding: t; -*-

;; Copyright (C) 2014 by Koichi Osanai

;; Author: Koichi Osanai <osanai3@gmail.com>
;; Version: 0.2

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; M-x swap-buffer : swap buffer with next window

;;; Code:

;;;###autoload
(defun swap-buffer ()
  "Swap buffer with next window."
  (interactive)
  (let ((current-window (selected-window))
        (next-window (next-window (selected-window) 0)))
    (let ((current-buffer (window-buffer current-window))
          (next-buffer (window-buffer next-window)))
      (with-selected-window current-window (switch-to-buffer next-buffer))
      (with-selected-window next-window (switch-to-buffer current-buffer)))))

(provide 'swap-buffer)
;;; swap-buffer.el ends here
