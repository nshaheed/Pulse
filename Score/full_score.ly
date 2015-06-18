\version "2.18.2"
\language "english"

\include "flute_mvmt1.ly"
\include "flute.ly"
\include "flute_mvmt_3_contents.ly"

% Paper Size
#(set! paper-alist (cons '("my size" . (cons (* 10 in) (* 13 in))) paper-alist))

\header {
 title = "Pulse"
 composer = "Nicholas Shaheed"
 instrument = ##f
 tagline = ##f
}

\paper {
  #(set-paper-size "my size")
  size = 1\in
  left-margin  = \size
  right-margin = \size
  top-margin   = \size
  bottom-margin = \size
}

%movement 1
\score {
  \header { piece = "Movement I" }
  \new Staff \with { \consists "Page_turn_engraver"}{
    \fluteOne 
  }
}

% intermission 1
% \score {
%   \header { piece = "Intermission" }
%   \layout { ragged-last = ##f }
%   \new Staff {
%     \time 3/4
%     \compressFullBarRests
%     \override MultiMeasureRest.expand-limit = #2
%     \override Staff.Clef #'stencil = ##f
%     
%     R2.*4 \bar "|."
%   }
% }

%movement 2
\score {
  \header { piece = "Movement II" }
   \new Staff \with { \consists "Page_turn_engraver"}{
     \fluteTwo
   }
}

%movement 3
\score {
  \header { piece = "Movement II" }
   \new Staff \with { \consists "Page_turn_engraver"}{
     \fluteThree
   }
}