\version "2.18.2"
\language "english"
\include "heartbeat.ly"
\include "lowerTorch.ly"
\include "upperTorch.ly"
\include "groove.ly"
\include "flute_mvmt1_contents.ly"

\score {
  <<
      \new Staff {
        \fluteOne
      }
      
      \new StaffGroup {
        <<
          \new DrumStaff {
            \numericTimeSignature
            \override NoteHead.style = #'cross
            \override Staff.StaffSymbol #'line-positions = #'( 0 )
            \override Staff.BarLine #'bar-size = #2
            %\set DrumStaff.drumStyleTable = #(alist->hash-table snaredrum)
          
            \groove
          } 
          
          \new Staff {
            <<
              \numericTimeSignature
             
              \new Voice = "first"
                { \voiceOne \upperTorch}
              \new Voice = "second"
                { \voiceTwo \stemUp \lowerTorch}
              \new Voice = "fourth"
                { \voiceFour \heartbeat }
            >>
          }
      
       >>
      }
  >>
}