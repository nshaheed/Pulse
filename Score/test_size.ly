\version "2.18.2"
\language "english"

\include "full_score.ly"

#(set! paper-alist (cons '("my size" . (cons (* 8.5 in) (* 11 in))) paper-alist))

\header {
 title = "Pulse"
 composer = "Nicholas Shaheed"
 instrument = ##f
 tagline = ##f
}

\paper {
  #(set-paper-size "my size")
%   size = 1\in
%   left-margin  = \size
%   right-margin = \size
%   top-margin   = \size
%   bottom-margin = \size
}
