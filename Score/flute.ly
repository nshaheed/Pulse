\version "2.18.2"
\language "english"

\include "vibrato.ly"
\include "polyphonics.ly"


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

    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \set Score.currentBarNumber = #1
    % Permit first bar number to be printed
    %\bar ""
    
    g8\staccato\p r r2 | R2.*6 | g4\staccato-+ r2
    
    \time 4/4 R1*4 |
    \time 2/4 c2-> |
    \time 4/4 R1 * 4 |
    \time 3/4 c8\staccato r r2 | R2.*4
    
    \time 4/4 \aqfer1 R1 * 3 | aqf'1 | R1 * 2 | 
    \time 3/4 r2 g,8\staccato r8 | 
    \time 4/4 R1 * 2 | <g c aqf'>1~\<_\gcaqfOrig | <g c aqf'>\!\> | 
    \time 2/4 R2\! | 
    \time 5/4 <g c aqf'>1\<_\gcaqfOrig \breathe <<\dlowf8 s8\f\staccato-+>> r8\! | 
    \time 3/4 R2. * 6 | 
    \time 4/4 <<\gcaqf1 s1--\p>> | R1 * 2 | 
    \time 5/4 <d\harmonic d d'>4-- r1 |
    \time 4/4 R1 | \appoggiatura f'8 \aaqs2. r4 | 
    \time 3/4 R2. * 2 | 
    \time 4/4 \appoggiatura f8 \aaqs2. r8 d8-- | d,-> r r4 r2 | R1 | \gcaqf2 r2 | R1 | 
    \time 3/4 f'4 \aaqs4.. d'16-^ | R2. * 2 | \gcaqf4 \vibrato #'(0.5 2.5) #1 d2:32~\<\startTrillSpan | 
    \time 4/4 d8. <d, f>16->\!_\dlowfOrig\stopTrillSpan \tuplet 3/4 {r4 d'8->\mf} r4 |
      R1 | 
    \time 3/4 \tuplet 3/4 {d,,8 r4} <d' f>4~_\dlowfOrig | <d f>4 <d f>8. d'16-> \gcaqf4 | 
    \time 5/4 R1*5/4 | 
    \time 4/4 \vibrato #'(0.5 2.5) #1 <d,,\harmonic d d'>2.:32\startTrillSpan d'16->\stopTrillSpan r16 r8 |
      R1 | \vibrato #'(0.5 2.5) #1 <d,\harmonic d d'>2.:32\startTrillSpan d'16->\stopTrillSpan r16 r8 |
      R1
    \time 3/4 \aaqs2. | R2. | 
    
      \once \set crescendoText = \markup { \italic { cresc. poco a poco } }
      \once \set crescendoSpanner = #'text
      \once \override DynamicTextSpanner.style = #'dotted-line
      \vibrato #'(0.5 2.5) #1 <a aqs'>2.:32\startTrillSpan\< |
      R2.\stopTrillSpan | 
    \time 4/4 <d,\harmonic d d'>4\staccato <a' aqs'>2.:32
    \time 2/4 R2 | \time 4/4 <d,\harmonic d d'>4\staccato <a' aqs'>2.:32 \time 2/4 R2
    \time 3/4 d8 d' r16 \aqfer8 r16 r4 | af16 g gf f r4 r16 \aqfer8 r16 | 
    \time 4/4 <d,,\harmonic d d'>2:32 d''16-^ r16 r8 r4 | <a, aqs'>1~\fp\<_\aaqsOrig | <a aqs'>1
    \time 3/4 d'16-^\ff r r8 r2 |
    \textLengthOn
    \time 4/4 <<R1 * 7 s4^"(Enter extreme meditative state)">> | cqs1~_\cqserr\p-+ | cqs4 r4 r2 | 
    \time 3/4 r2 b,4--
    \time 5/4 R1*5/4 * 5
    \time 4/4 cqs'1~ | cqs4 r4 r2 | r2 e,4.-- r8 | R1 * 5 | <g, c aqf'>1_\gcaqfOrig~ | <g c aqf'>1~ | <g c aqf'>1
      R1 |
    \time 3/4 b4.( cqs'8_\cqserr~ cqs4) | R2. * 10
    \time 4/4 cqs1~ | <cs, cqs'>1_\cscqsOrig | \tuplet 3/2 {c,4-- c-- c--} c-- c-- | r8 c8-- c2.-- | 
    \time 3/4 R2. * 5 |
    \time 4/4 <fs\harmonic fs fs'>2 <cs' cqs'>2_\cscqsOrig~ | \vibrato #'(0.5 2.5) #1 cqs'1:32\<_\cqserr\startTrillSpan | 
      
      \tuplet 3/2 {fs4\!\stopTrillSpan-^ fs fs} \tuplet 3/2 {fs-^ fs fs} | fs fs
      \appoggiatura {g,8} g'2-^ | \tuplet 3/2 {r4 fs\> fs} fs fs\! 
    \time 3/4 R2. * 5
    \time 5/4 <cs, cqs'>1~_\cscqsOrig <cs cqs'>4 | R1*5/4 * 2 | <fs,\harmonic fs fs'>4 r1
    \time 3/4  R2. * 2 | 
    \time 4/4 \tuplet 3/2 {<cs' cqs'>4_\cscqsOrig\< <cs cqs'>4 <cs cqs'>4} r4 <cs cqs'>4 | 
      \tuplet 3/2 {r4 <cs cqs'>4 <cs cqs'>4} r <cs cqs'>4 | 
    \time 3/4 <fs,\harmonic fs fs'>2.\!\> | <<R2. * 10\! s4-+>> | f8\staccato\f r r2 | R2. * 6 | f8\staccato r r2 |
      R2. | f'4\staccato r2 | R2.*6
    \time 4/4 f,8 r r4 r2 | R1*3 | 
    \time 3/4 \appoggiatura{\glow8} f'4\staccato\mp r2 | R2. | 
    \time 4/4 f1 | R1*5 | 
    \time 3/4 \appoggiatura{\glow8} f4\staccato r2 | R2. | 
    \time 4/4 f1 | r2 \appoggiatura f8 bf8 bf, g''4:32~_\glowOrig\< | g1:32 | 
    \time 2/4 r4\! \appoggiatura g8 f,4\staccato\mf | 
    \time 4/4 R1 * 5 | f8\staccato r r4 r2 | R1 * 3
    \time 5/4 f8\staccato r r4 \vibrato #'(0.5 2.5) #1 <f f'>2.:32\<\startTrillSpan-+ | 
    \time 3/4 r4\!\stopTrillSpan f8\staccato\f r8 <bf,\harmonic bf bf'>\staccato r | R2. * 5
      <bf\harmonic bf bf'>4\staccato <bf\harmonic bf bf'>4\staccato <bf\harmonic bf bf'>4\staccato |
      r8 f'16( bf g'8\staccato_\glowOrig) r8 r4 | R2. | r8 f16( af, ef8\staccato) r8 r4 |
    \time 4/4 R1 | 
    \time 5/4 \appoggiatura ef,8 <bf'\harmonic bf bf'>2. a8\staccato r16 ef-> e8 bf'!-> |
      r8 \vibrato #'(0.5 2.5) #1 <f' f'>1:32\startTrillSpan_\ffflatOrig\< r8\stopTrillSpan | 
      r1 f,8\staccato\mp r8 | R1*5/4 * 3 | f'8:32\staccato\mf r8 f'2.:32 \appoggiatura{\glow8} f,4\staccato |
      r8 \gcaqf1 \breathe <<\dlowf8 s8-> >> | r2 \glow2. | 
    \time 3/4 f16( g, f8->) r2 | \gcaqf2. | r8 <d' f>8~_\dlowfOrig <d f>2~ | <d f>2 r4 |
      \appoggiatura bf'8 g'2.~_\glowOrig\< | g2 \breathe bf,16\f a f e | 
      e,8\staccato r a\staccato r16 ef e8\staccato bf'\staccato |
      r16 e, f8\staccato b8\staccato r16 f fs8\staccato c'-> | 
    \time 4/4 <g c aqf'>2\<_\gcaqfOrig-> <g c aqf'>:32->
    \time 6/4 \pitchedTrill <gs gqs'>1.\startTrillSpan_\markup { \gsgqsOrig \gsaOrig} a8
    \time 4/4 <g c aqf'>1:32_\gcaqfOrig\stopTrillSpan\ff-+ | 
    \time 6/4 \pitchedTrill <gs gqs'>1.\startTrillSpan a8
    \time 2/4 <gs gqs'>2->\stopTrillSpan | 
    \time 4/4 <g c aqf'>1:32 | 
    \time 2/4 <gs a'>2->_\gsaOrig

    \break
    \time 4/4 \gcaqf2. <<\dlowf8 s8\staccato>> r8 |
    \time 2/4 d'2 |
    \time 6/4 \pitchedTrill <gs, gqs'>1.\startTrillSpan_\markup { \gsgqsOrig \gsaOrig} a8
    \time 3/4 g!8\stopTrillSpan r8 r2 | 
    \time 4/4 <<\gfer1 s1-> >> | 
    \time 3/4 g8-^ r8 r2 | 
    \time 4/4 <<\gfer1 s1-^ >> 
    \time 2/4 \pitchedTrill <gs gqs'>2\startTrillSpan a8
    \time 3/4 g8-^\stopTrillSpan r8 << \gfer2 s2-> >> | 
    \time 2/4 \pitchedTrill <gs gqs'>2\startTrillSpan a8 \breathe | 
      \appoggiatura f'8 <<\glow4 s4\staccato\stopTrillSpan>> r4
    \time 4/4 <g, c aqf'>1~_\gcaqfOrig | 
    \time 5/4 <g c aqf'> \breathe <<\dlowf8 s8-> >> r8 |
    \time 4/4 <<\gfer1 s1-> >> | <<g'1 f'1 s1-^>> | <g, f'>~-^\< | <g f'>~ | <g f'>~ | <g f'>~ | <g f'>~ | 
      << <g f'> {s4 s s s\!} >> \bar "|."

    
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