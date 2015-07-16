\version "2.18.2"
\language "english"

\include "flute_mvmt1.ly"
\include "flute.ly"
\include "flute_mvmt_3_contents.ly"

% TODO: Do flutter notes properly (have explaination at beginning)

% Paper Size
%#(set! paper-alist (cons '("my size" . (cons (* 10 in) (* 13 in))) paper-alist))

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
  % #(set-paper-size "my size")
c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>REM Compiles both the 10"x13" & 8.5"x11" versions of the score 

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>lilypond -dno-point-and-click -ddelete-intermediate-files -dinclude-settings=fullscoressettings.ly --pdf full_score.ly 
GNU LilyPond 2.18.2
Processing `full_score.ly'
Parsing...
Interpreting music...[8][16][24][32][40][48][56][64][72][80][88][96][104][112][120][128][128]
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...[8][16][24][32][40][48][56][64][72][80][88][96][104]
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...[8]
flute_mvmt_3_contents.ly:18:20: warning: Ignoring grob for slur: TrillPitchAccidental.  avoid-slur not set?
  \pitchedTrill bf2
                   \startTrillSpan b\stopTrillSpan
[16]
flute_mvmt_3_contents.ly:22:20: warning: Ignoring grob for slur: TrillPitchAccidental.  avoid-slur not set?
  \pitchedTrill bf2
                   \startTrillSpan b\stopTrillSpan
[24][32][40][48][56][64][72][80][88][96][104][112]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 2 or 3 pages...
Drawing systems...
Finding the ideal number of pages...
Fitting music on 5 or 6 pages...
Drawing systems...
Layout output to `full_score.ps'...
Converting to `./full_score.pdf'...
Success: compilation successfully completed

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>lilypond -dno-point-and-click -ddelete-intermediate-files --pdf test_size.ly 
GNU LilyPond 2.18.2
Processing `test_size.ly'
Parsing...
Interpreting music...[8][16][24][32][40][48][56][64][72][80][88][96][104][112][120][128][128]
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...[8][16][24][32][40][48][56][64][72][80][88][96][104]
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...[8]
flute_mvmt_3_contents.ly:18:20: warning: Ignoring grob for slur: TrillPitchAccidental.  avoid-slur not set?
  \pitchedTrill bf2
                   \startTrillSpan b\stopTrillSpan
[16]
flute_mvmt_3_contents.ly:22:20: warning: Ignoring grob for slur: TrillPitchAccidental.  avoid-slur not set?
  \pitchedTrill bf2
                   \startTrillSpan b\stopTrillSpan
[24][32][40][48][56][64][72][80][88][96][104][112]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 4 or 5 pages...
Drawing systems...
Finding the ideal number of pages...
Fitting music on 7 or 8 pages...
Drawing systems...
warning: compressing over-full page by 7.6 staff-spaces
warning: page 7 has been compressed
Layout output to `test_size.ps'...
Converting to `./test_size.pdf'...
Success: compilation successfully completed

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>REM Compiles the title page and info pages 

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>xelatex.exe title.tex 
This is XeTeX, Version 3.1415926-2.5-0.9999.3 (MiKTeX 2.9 64-bit)
entering extended mode
("c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score\title.tex"
LaTeX2e <2011/06/27>
Babel <v3.8m> and hyphenation patterns for english, afrikaans, ancientgreek, ar
abic, armenian, assamese, basque, bengali, bokmal, bulgarian, catalan, coptic, 
croatian, czech, danish, dutch, esperanto, estonian, farsi, finnish, french, ga
lician, german, german-x-2013-05-26, greek, gujarati, hindi, hungarian, iceland
ic, indonesian, interlingua, irish, italian, kannada, kurmanji, latin, latvian,
 lithuanian, malayalam, marathi, mongolian, mongolianlmc, monogreek, ngerman, n
german-x-2013-05-26, nynorsk, oriya, panjabi, pinyin, polish, portuguese, roman
ian, russian, sanskrit, serbian, slovak, slovenian, spanish, swedish, swissgerm
an, tamil, telugu, turkish, turkmen, ukenglish, ukrainian, uppersorbian, usengl
ishmax, welsh, loaded.
("C:\MiKTeX 2.9\tex\latex\base\book.cls"
Document Class: book 2007/10/19 v1.4h Standard LaTeX document class
("C:\MiKTeX 2.9\tex\latex\base\bk10.clo"))
("C:\MiKTeX 2.9\tex\latex\geometry\geometry.sty"
("C:\MiKTeX 2.9\tex\latex\graphics\keyval.sty")
("C:\MiKTeX 2.9\tex\generic\oberdiek\ifpdf.sty")
("C:\MiKTeX 2.9\tex\generic\oberdiek\ifvtex.sty")
("C:\MiKTeX 2.9\tex\generic\ifxetex\ifxetex.sty")
("C:\MiKTeX 2.9\tex\xelatex\xetexconfig\geometry.cfg"))
("C:\MiKTeX 2.9\tex\latex\fontspec\fontspec.sty"
("C:\Program Files\MiKTeX 2.9\tex\latex\l3kernel\expl3.sty"
("C:\Program Files\MiKTeX 2.9\tex\latex\l3kernel\expl3-code.tex"
("C:\MiKTeX 2.9\tex\latex\misc\etex.sty"))
("C:\Program Files\MiKTeX 2.9\tex\latex\l3kernel\l3unicode-data.def")
("C:\Program Files\MiKTeX 2.9\tex\latex\l3kernel\l3xdvipdfmx.def"))
("C:\Program Files\MiKTeX 2.9\tex\latex\l3packages\xparse\xparse.sty")
("C:\MiKTeX 2.9\tex\latex\fontspec\fontspec-patches.sty"
("C:\MiKTeX 2.9\tex\latex\base\fixltx2e.sty"))
("C:\MiKTeX 2.9\tex\latex\fontspec\fontspec-xetex.sty"
("C:\MiKTeX 2.9\tex\latex\base\fontenc.sty"
("C:\MiKTeX 2.9\tex\latex\euenc\eu1enc.def")
("C:\MiKTeX 2.9\tex\latex\euenc\eu1lmr.fd"))
("C:\MiKTeX 2.9\tex\xelatex\xunicode\xunicode.sty"
("C:\Program Files\MiKTeX 2.9\tex\latex\tipa\t3enc.def"
("C:\MiKTeX 2.9\tex\latex\euenc\eu1lmss.fd"))
("C:\MiKTeX 2.9\tex\latex\graphics\graphicx.sty"
("C:\MiKTeX 2.9\tex\latex\graphics\graphics.sty"
("C:\MiKTeX 2.9\tex\latex\graphics\trig.sty")
("C:\MiKTeX 2.9\tex\latex\00miktex\graphics.cfg")
("C:\Program Files\MiKTeX 2.9\tex\xelatex\xetex-def\xetex.def"))))
("C:\MiKTeX 2.9\tex\latex\fontspec\fontspec.cfg")))
("C:\MiKTeX 2.9\tex\latex\anyfontsize\anyfontsize.sty")
("C:\MiKTeX 2.9\tex\latex\tools\afterpage.sty")
("c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score\title.aux")
("C:\Program Files\MiKTeX 2.9\tex\latex\tipa\t3cmr.fd")
*geometry* detected driver: pdftex
[1] [2] ("c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score\title.aux")
** WARNING ** Couldn't open font map file "kanjix.map".
 )
(see the transcript file for additional information)
Output written on title.pdf (2 pages).
Transcript written on title.log.

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>REM Combine the title page & 10" x 13" score 

c:\Users\N\Audio stuff\Flute Heart Rate Piece\Score>pdftk.exe title.pdf full_score.pdf cat output pulse.pdf 

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
