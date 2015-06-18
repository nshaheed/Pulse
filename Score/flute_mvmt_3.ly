\version "2.18.2"
\language "english"

\include "flute_mvmt_3_contents.ly"

#(set! paper-alist (cons '("my size" . (cons (* 8.5 in) (* 11 in))) paper-alist))
    
\paper {
  #(set-paper-size "my size")
  ragged-last-bottom = ##f
  indent = 10\mm 
  left-margin = 15\mm 
  right-margin = 15\mm 
  bottom-margin = 15\mm 
  top-margin = 10\mm 
  line-length = 180\mm 
}

\header {
  title = "movement 3"
  composer = "Nicholas Shaheed"
  tagline = ##f
}

\score {
  {\new Staff \with { \consists "Page_turn_engraver"}
   \set midiInstrument = #"flute"
    \fluteThree
    
  }
%   \midi {
%       \tempo 4 = 120
%   }
}

