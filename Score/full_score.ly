\version "2.18.2"
\language "english"

\include "flute_mvmt1.ly"
\include "flute.ly"
\include "flute_mvmt_3_contents.ly"

% TODO: Do flutter notes properly (have explaination at beginning)

% Paper Size
#(set! paper-alist (cons '("my size" . (cons (* 10 in) (* 13 in))) paper-alist))

% #(set-global-staff-size 22.45)

\header {
 title = \markup {
   \override #'(font-name . "DejaVu Sans ExtraLight") 
   \fontsize #6
   "Pulse"
 }
 subtitle = \markup { 
   \override #'(font-name . "DejaVu Sans ExtraLight") "For Solo Flute, Computer, and Heart-Rate Monitor"
 }
 composer = \markup {
   \override #'(font-name . "DejaVu Sans ExtraLight") 
   "Nicholas Shaheed"
 }
 instrument = ##f
 tagline = ##f
}

\layout {
    \override TextSpanner #'(font-name) = "DejaVu Sans ExtraLight"
}

\paper {
  #(set-paper-size "my size")
  size = 1\in
  left-margin  = \size
  right-margin = \size
  top-margin   = \size
  bottom-margin = \size
  %system-system-space.padding = #100
  %max-systems-per-page = #5
}

% \layout {
%   \context {
%     \consists "Page_turn_engraver"
%     
%   }
% }

\bookpart {
  \paper {
    ragged-last-bottom = ##f
    %max-systems-per-page = #9
  }
  %movement 1
  \score {
    \header { 
      piece = \markup {
        \override #'(font-name . "DejaVu Sans Book") 
        "Movement I" 
      }
    }
    \new Staff \with { \consists "Page_turn_engraver"}{
      \set Staff.minimumPageTurnLength = #(ly:make-moment 1/32)
      
      \override Score.BarNumber.break-visibility = ##(#t #t #t)
      \set Score.currentBarNumber = #1
    
      \fluteOne 
    }
  }
  
  % interlude 1
  \score {
    \header { 
      piece = \markup {
        \override #'(font-name . "DejaVu Sans Book") 
        "Interlude" 
      }
    }
    \layout { ragged-last = ##f }
    \new Staff {
      \time 3/4
      \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #2
      \override Staff.Clef #'stencil = ##f
      
      R2.*3 \bar "|."
    }
  }
}

%movement 2
\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
  }
  
  \paper {
    max-systems-per-page = #6
    %ragged-last-bottom = ##f
  }
  
  \score {
    \header { piece = \markup {
      \override #'(font-name . "DejaVu Sans Book")
      "Movement II" 
    }
  }
     \new Staff {%\with { \consists "Page_turn_engraver"}{
                 
       \override Score.BarNumber.break-visibility = ##(#t #t #t)
       \set Score.currentBarNumber = #1
       
       \fluteTwo
     }
  }
%}

%\bookpart {
%   \header {
%     title = ##f
%     subtitle = ##f
%     composer = ##f
%   }
  
  \paper {
    max-systems-per-page = #8
    ragged-last-bottom = ##f
  }
  
  % interlude 2
  \score {
    \header { 
      piece = \markup {
        \override #'(font-name . "DejaVu Sans Book") 
        "Interlude" 
      }
    }    \layout { ragged-last = ##f }
    \new Staff {
      \time 3/4
      \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #2
      \override Staff.Clef #'stencil = ##f
      
      R2.*12 \bar "|."
    }
  }
  
  %movement 3
  \score {
    \header { piece = \markup {
      \override #'(font-name . "DejaVu Sans Book")
      "Movement III" 
      }
    }
     \new Staff {%\with { \consists "Page_turn_engraver"}{
       \fluteThree
     }
  }
}
