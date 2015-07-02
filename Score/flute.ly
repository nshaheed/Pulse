\version "2.18.2"
\language "english"

\include "vibrato.ly"
\include "polyphonics.ly"

vib = \vibrato #'(0.5 2.5) #1

fluteTwo = 
  \relative c'' {
    \clef "treble"
    \time 3/4
    \numericTimeSignature
    
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    \set Staff.extraNatural = ##f
    \tempo \markup {
      \note-by-number #2 #0 #UP
      "= Heart Beat"
    }
    

%     <<\aqfC4 s4^"closed">>
%     <<\aqfO4 s4^"open">>
%     <<\cqsO4 s4^"open">>
%     <<\cqsC4 s4^"closed">>
%     \gcaqf4
%     \dlowf4
%     \break
%     \aaqs4
%     \cscqs4
%     \gfer4
%     \ffflat4
%     \gsgqs4
%     \gsa4
%     \gnf4

    % \override Score.BarNumber.break-visibility = ##(#t #t #t)
%     \set Score.currentBarNumber = #1
    % Permit first bar number to be printed
    %\bar ""
    
    g8\staccato\p r r2 | R2. | g4\staccato r2
    
    \time 4/4 R1   |
    \time 4/4 c1-> |
    \time 3/4 R2.  | c8\staccato r r2 | 
    \time 4/4 \aqfer1 
    \time 2/4 R2 | 
    \time 4/4 aqf'1 | 
    \time 3/4 r2 g,8\staccato r8 | 
    \time 3/4 R2. | 
    \time 4/4 <g c aqf'>1~\<_\gcaqfOrig | <g c aqf'>\!\> | 
    \time 2/4 R2\! | 
    \time 4/4 << {\gcaqf2.} {s2.\<\breathe} >> <<\dlowf8 s8\f\staccato>> r8 | 
    \time 5/4 R1*5/4 |
    \time 3/4 <<\dlowf8 s8\f\staccato>> r8 r4 r4 | <d\harmonic d d'>2.-\p |
    <<\dlowf8 s8\f\staccato>> r8 r4 r4 | R2. |
    \appoggiatura f'8 << \aaqs2 s2\sf >> r4 | r4 <d\harmonic d d'>2-\p |
    R2. | <<\dlowf8 s8\f\staccato>> r8 r4  \appoggiatura f'8 <a,, aqs'>4\sf_\aaqsOrig~ |
    <a aqs'>4. d8-. d,\p-. r8 | R2. |

    \time 4/4 f'4 \aaqs4.. d'16-^  r4 | f,4\mp \aaqs4.. d'16-^  r4 |

    \time 3/4 f,4 \gcaqf2 |
    \vib d'2:32~\<\startTrillSpan d8. <d, f>16->\!_\dlowfOrig\stopTrillSpan |

    \time 2/4 \tuplet 3/2 {r4 d'8->\mf} r4 |
    
    % \time 3/4 <d\harmonic d d'>4--\p \appoggiatura f'8 << \aaqs2 s2\sf >>|
    % \time 5/4 <d,\harmonic d d'>4--\p \appoggiatura f'8 <a, aqs'>2\sf_\aaqsOrig~ <a aqs'>8 d8 d,\p-. r |
    % \time 3/4 f'4 \aaqs4.. d'16-^ | 
    % \time 4/4 \gcaqf2 \vib d2:32~\<\startTrillSpan | 
				% \time 4/4 d8. <d, f>16->\!_\dlowfOrig\stopTrillSpan \tuplet 3/4 {r4 d'8->\mf} r4 |
    
    \time 3/4 \tuplet 3/4 {d,,8 r4} <d' f>4~_\dlowfOrig | <d f>4 <d f>8. d'16-> \gcaqf4 | 
    \time 5/4 r4 \gcaqf2. r4 |
    
    \once \set crescendoText = \markup { \italic { cresc. poco a poco } }
    \once \set crescendoSpanner = #'text
    \once \override DynamicTextSpanner.style = #'dotted-line
      
    \time 4/4 \vib <d,,\harmonic d d'>2.:32\startTrillSpan\< d'16->\stopTrillSpan r16 r8 |
      \vib <d,\harmonic d d'>2.:32\startTrillSpan d'16->\stopTrillSpan r16 r8 |
      <a aqs'>4_\aaqsOrig \vib <a aqs'>2.:32\startTrillSpan |
      
    \time 4/4 <d,\harmonic d d'>4\staccato\stopTrillSpan 
       \vib <a' aqs'>2.:32\startTrillSpan
      
    \time 3/4 d8\stopTrillSpan d' r16 \aqfer8 r16 r4 | af16 g gf f r4 r16 \aqfer8 r16 | 
      \vib <d,\harmonic d d'>2:32\startTrillSpan d''16-^\stopTrillSpan r16 r8 | 

    \time 4/4 <a, aqs'-^ >1~\fp\<_\aaqsOrig | \vib <a aqs'>1:32\startTrillSpan
    \time 3/4 d'16-^\ff\stopTrillSpan r r8 r2 | R2. * 2 |
    \time 4/4 cqs1~_\cqserr\p | 
    \time 5/4 cqs4 r4 b,4 r2 | 
    \time 4/4 cqs'1~ | cqs4 r8 b,8--~ b4 r | 
      << {<g c aqf'>1_\gcaqfOrig~} {s1\<}>> | << {<g c aqf'>1~ } {s2 s2\>} >> | 
      << {<g c aqf'>1} {s2. s4\!\breathe} >>
      
    \time 4/4 b4.( cqs'8_\cqserr~ cqs2~ | 
    \time 3/4 <cs, cqs'>2._\cscqsOrig ) | 
    \time 4/4 \tuplet 3/2 {c,4-- c-- c--} c-- c-- | r8 c8-- c2.-- | 
    \time 4/4 r4 <fs\harmonic fs fs'>4 <cs' cqs'>2_\cscqsOrig~ | \vib cqs'1:32\<_\cqserr\startTrillSpan | 
      \tuplet 3/2 {fs4\!\stopTrillSpan-^ fs fs} \tuplet 3/2 {fs-^ fs fs} | fs fs
      \appoggiatura {g,8} g'2-^ | \tuplet 3/2 {r4 fs\> fs} fs fs
    
    \time 5/4 <cs, cqs'>1~_\cscqsOrig <cs cqs'>4\! | 
      \pageTurn r2 f,8-.\p r8 r4 f8-. r8 |
      r2 \appoggiatura{\glow8} f'4\staccato\mp r4 f,8-. r8 | 
      \appoggiatura{\glow8} f'4\staccato\mf r4 f2. |
    
    \time 4/4 \appoggiatura{\glow8} f4\staccato r4 \appoggiatura f8 bf8 bf, g''4:32~_\glowOrig\< | 
      g1:32 | 
      
    \time 3/4 r4\! \appoggiatura g8 f,4\staccato\mp r4 | f8\staccato r8 r4 f8\staccato r8 |
      \vib <f f'>2.:32\<\startTrillSpan | 
      r4\!\stopTrillSpan f8\staccato\f r8 <bf,\harmonic bf bf'>\staccato r |
      <bf\harmonic bf bf'>8\staccato <bf\harmonic bf bf'>8\staccato 
        r8 f'16( bf g'8\staccato_\glowOrig) r8 | 
      r4 r8 f16( af, ef8\staccato) r8 |
      
    \time 5/4 r4 \appoggiatura ef,8 <bf'\harmonic bf bf'>2 a8\staccato r16 ef-> e8 bf'!-> |
    \time 4/4 r8 \vib <f' f'>2:32\startTrillSpan_\ffflatOrig\< r8\stopTrillSpan f,8\staccato\sp r8 | 
      f'8:32\staccato\mf r8 f'2:32 \appoggiatura{\glow8} f,4\staccato |
      r8 \gcaqf2 \breathe <<\dlowf8 s8-> >> r4 | \glow2. f16( g, f8->) | 
      
    \time 3/4 \gcaqf2. | r8 <d' f>8~_\dlowfOrig-> <d f>2~ | 
      <d f>4 \appoggiatura bf'8 g'2_\glowOrig\< \breathe | 
    
    \time 4/4 bf,16\f a f e e,8\staccato r a\staccato r16 ef e8\staccato bf'\staccato |
    \time 3/4 r16 e, f8\staccato b8\staccato r16 f fs8\staccato c'-> | 
      <g c aqf'>4\<_\gcaqfOrig-> <g c aqf'>2:32-> | 
      \pitchedTrill <gs gqs'>2.\startTrillSpan_\markup { \gsgqsOrig \gsaOrig} a8
      
    \time 2/4 <g c aqf'>2:32_\gcaqfOrig\stopTrillSpan\ff | 
    \time 3/4 \pitchedTrill <gs gqs'>2.\startTrillSpan a8
    \time 2/4 <gs gqs'>2->\stopTrillSpan | 
    \time 3/4 <g c aqf'>2.:32 | 
    \time 2/4 <gs a'>2->_\gsaOrig

    %\break
    
    % Stupid workaround so that the fingering charts don't overlap
    %	at 83 and create a huge vertical space
    \override Staff.Rest.transparent = ##t
    \time 3/4 << \new Voice {
                    \voiceTwo 
                      \gcaqf2
                  } 
                  \new Voice {
                    \voiceOne
                      r4 r4
                  } 
               >> 
        \override Staff.Rest.transparent = ##f
        <<\dlowf8 s8\staccato>> r8 | 

    \time 2/4 d'2\sp\<-> |
    \time 3/4 \pitchedTrill <gs, gqs'>2.->\startTrillSpan_\markup { \gsgqsOrig \gsaOrig} a8
    \time 2/4 g!8\stopTrillSpan\mf-^ r8 r4 | 
    \time 3/4 <<\gfer2. s2.\<-> >> | 
    \time 2/4 g8\f-^ r8 r4 | 
    \time 3/4 <<\gfer2. s2.-^\< >> 
    \time 2/4 \pitchedTrill <gs gqs'>2\startTrillSpan a8
    \time 3/4 g8-^\ff\stopTrillSpan r8 << \gfer2 s2-> >> | 
      \pitchedTrill <gs gqs'>2\startTrillSpan a8 \breathe 
        \appoggiatura f'8 <<\glow4 s4\staccato\stopTrillSpan>> 
      <g, c aqf'>2_\gcaqfOrig \breathe <<\dlowf8 s8-> >> r8 |
      <<\gfer2. s2.-> >> | <<g'2. f'2. s2.-^>> | <g, f'>~-^\< | <g f'>:32~ | <g f'>:32~ |
      << <g f'>:32 {s4 s s\!} >> 
      % turns off bar number visibility - was displaying measure
      %		number after the last measure
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \bar "|."

      % Examples of the notes w/ fixed fingerings
      % \break 
%       
%       \pitchedTrill <gs, gqs'>1\startTrillSpan_\markup { \gsgqsOrig \gsaOrig} a8 |
%       <<\gfer1 s1->\stopTrillSpan >>
%       \aqfer1
    
  }
  
% \markup {
%   \wordwrap-lines {
%     "Performance notes: A " \musicglyph #"plus" 
%     " sign above a note indicates a note of the granular sythesizer coming in, for reference."
%   }
% }
% \markup {"The squiggly lines above some notes indicate the intensity of the flutter (flutter is tremolo markings)"}

% {\new Staff \with { \consists "Page_turn_engraver"}
% 
%   \fluteTwo
% }
