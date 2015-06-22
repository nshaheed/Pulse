\version "2.18.2"
\language "english"

\include "flute_mvmt1.ly"
\include "flute.ly"
\include "flute_mvmt_3_contents.ly"

% TODO: try using a book so you can have different paper spacings

% Paper Size
#(set! paper-alist (cons '("my size" . (cons (* 10 in) (* 13 in))) paper-alist))

% #(set-global-staff-size 22.45)

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
  ragged-last-bottom = ##f
  %system-system-space.padding = #100
  %max-systems-per-page = #5
}

%movement 1
\score {
  \header { piece = "Movement I" }
  \new Staff \with { \consists "Page_turn_engraver"}{
    \fluteOne 
  }
}

% intermission 1
\score {
  \header { piece = "Intermission" }
  \layout { ragged-last = ##f }
  \new Staff {
    \time 3/4
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    \override Staff.Clef #'stencil = ##f
    
    R2.*4 \bar "|."
  }
}

%movement 2
\score {
  \header { piece = "Movement II" }
   \new Staff \with { \consists "Page_turn_engraver"}{
     %\override Score.BarNumber.outside-staff-priority = #1
     \fluteTwo
   }
}

% intermission 2
\score {
  \header { piece = "Intermission" }
  \layout { ragged-last = ##f }
  \new Staff {
    \time 3/4
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    \override Staff.Clef #'stencil = ##f
    
    R2.*4 \bar "|."
  }
}

%movement 3
\score {
  \header { piece = "Movement III" }
   \new Staff \with { \consists "Page_turn_engraver"}{
     \fluteThree
   }
}