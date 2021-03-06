;; -*- lexical-binding: t -*-
;;
;; Author: Rainer Gemulla <rgemulla@gmx.de>
;;
;; This file is not part of GNU Emacs.
;;
;;; Code:


(spacemacs|define-transient-state frame
  :title "Frame Configuration Transient State"
  :doc (concat
" Move^^^^             Snap^^^^             Resize^^               Maximize^^        Other^^
 ────^^^^──────────── ─────^^^^─────────── ──────^^── ─────────── ────────^^─────── ──────────────────^^
 [_j_/_k_] down/up    [_J_/_K_] bottom/top [_[_] shrink horiz     [___] horiz       [_n_] create
 [_h_/_l_] left/right [_H_/_L_] left/right [_]_] enlarge horiz    [_v_] verti       [_d_] delete
 ^^^^                 ^^^^                 [_{_] shrink verti     [_m_] both        [_D_] delete other
 ^^^^                 ^^^^                 [_}_] enlarge verti    [_f_] fullscreen  [_q_] quit
 ^^^^                 ^^^^                 [_+_] enlarge+split h. ^^                ^^
 ^^^^                 ^^^^                 [_-_] shrink+delete h. ^^                ^^")
  :bindings
  ("j" move-frame-down)
  ("k" move-frame-up)
  ("h" move-frame-left)
  ("l" move-frame-right)
  ("J" frames/move-selected-frame-to-screen-bottom)
  ("K" frames/move-selected-frame-to-screen-top)
  ("H" frames/move-selected-frame-to-screen-left)
  ("L" frames/move-selected-frame-to-screen-right)
  ("[" shrink-frame-horizontally)
  ("]" enlarge-frame-horizontally)
  ("{" shrink-frame)
  ("}" enlarge-frame)
  ("+" frames/frame-enlarge-and-split-horizontally)
  ("-" frames/frame-shrink-and-delete-horizontally)
  ("_" toggle-max-frame-horizontally)
  ("v" toggle-max-frame-vertically)
  ("m" toggle-max-frame)
  ("f" spacemacs/toggle-fullscreen-frame)
  ("n" make-frame :exit t)
  ("d" delete-frame :exit t)
  ("D" delete-other-frames)
  ("q" nil :exit t))
(spacemacs/set-leader-keys "F." 'spacemacs/frame-transient-state/body)
(spacemacs/set-leader-keys "F+" 'frames/frame-enlarge-and-split-horizontally)
(spacemacs/set-leader-keys "F-" 'frames/frame-shrink-and-delete-horizontally)
