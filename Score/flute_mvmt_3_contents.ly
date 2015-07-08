\version "2.18.2"
\language "english"

\include "polyphonics.ly"

hb = \relative c' {
  \appoggiatura ef!16 f16\staccato f8.\staccato
  
}

% tr = \relative c' {
%    %\pitchedTrill {\addDur as}\startTrillSpan b\stopTrillSpan
%    \addDur a
% }

%tr = \pitchedTrill \addDur as\startTrillSpan b\stopTrillSpan
th = \relative c'' {
  \pitchedTrill bf2\startTrillSpan b\stopTrillSpan
}

tdh = \relative c'' {
  \pitchedTrill bf2\startTrillSpan b\stopTrillSpan
}

fluteThree = 
 \relative c'' {
    \clef "treble"
    \time 4/4
    \set Timing.beamExceptions = #'()
    \numericTimeSignature
    
    
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    \set Staff.extraNatural = ##f
    \tempo \markup {
     \note-by-number #2 #0 #UP
     "= Heart Beat"
    }
    
    % \override Score.BarNumber.break-visibility = ##(#t #t #t)
    % \set Score.currentBarNumber = #1
    
    % \pitchedTrill fs\startTrillSpan g\stopTrillSpan
    
    % Page 1 of notes
    
    <<\hb s4\p>> r4 bf2 |
    \time 2/4 <<\th s4-> >> |
    \time 3/4 <<\hb s4\stopTrillSpan>> r4 r |
    \time 4/4 bf2 \pitchedTrill bf2\startTrillSpan-> b |
    \time 3/4 <<\hb s4\stopTrillSpan>> r4 r  |
              g\< a bf |
              <<\hb s4\!>> \appoggiatura b16 bf2 | 
              <<\tdh s2-> >> r4\stopTrillSpan |
    \time 4/4 \hb r4 r r | 
              <<\gcaqf2. s2.--\< >> <<\dlowf8 s8-> >> r8 |
    \time 3/4 g4 a bf |
    \time 4/4 <<\hb s4\mp>> r4 \appoggiatura df16 \th |
    \time 3/4 <<\hb s4\stopTrillSpan>> df8->[ bf~] bf b |
    
              bf4 af g r \hb r |
    \time 4/4 \hb r <<\gcaqf2 s2-- >> |
              <<\th s2-> >> df'16\stopTrillSpan( bf8 df16 cf bf8 df16) |
              g,4\< a bf <<\dlowf8 s8-. s8-> >> r8 |
    
              <<\hb s4\mf>> r4 bf2-> | 
              \hb r4 <<\tdh s2-> >> | 
              g'8\stopTrillSpan-^ r8 g,4\< a \hb |
              bf2 \appoggiatura df16 <<\tdh s2-> >> |
              g16\stopTrillSpan cs, b8 bf4 <<\hb s4^>\!>> r4 | \pageTurn
    
    \time 2/4 \tdh |
    \time 3/4 g'4\stopTrillSpan\< a bf |
              g16-> cs, b8 \hb g'16-> cs, b8 |
              <<\th s2\f-> >> g'16\stopTrillSpan-> cs, b8 |
              cs16 g' cs,8-> g'16-> cs, b8 cs16 g' cs,8-> |
    
              cs16\< g' cs,8->  cs16 g' cs,8-> cs16 g' cs,8-> |
    \time 2/4 <<\hb s4\sp>> r4 |
    \time 4/4 bf2-- \gcaqf2 |
    \time 3/4 \hb r |
    \time 3/4 bf2-- g4~-- g a8-. bf8-. fs4-> |
    
              d'4. f,!8-. d[ f~] |
              f fs g4 a8-. bf-. |
              fs4-> ef'8[ d] b[ df] |
              c4 fs g |
    \time 2/4 <<\gcaqf2 s2\< >> | 
    \time 4/4 g,8:64\sp\<[ g:64] g:64 g:64 g:64[ g:64] g:64 g:64 | 
              g:64 g:64 g4\mf a8-. bf-. fs4-> |
              d'4. f,!8-> d[ f~] f fs |
              g4 f8-- e-- df'4. bf8-. | 
              g'4-> f8 e df bf b4-> |
    \time 3/4 d8 b c4-> df8 bf |
    
              c2.\>-> |
              R2.\! |
              g'4\!^"molto legato"\pp bf g8 bf |
              g4 bf g8 bf |
              g16( bf g bf) g4 bf |
              g2 r4 |
              g bf g16( bf g bf)  |
    
    \time 4/4 g8[ bf]( bf,) g' bf[ g] bf g |
              bf2.:32-- \breathe g16( bf g bf |
              bf,8)[ g'] bf g bf g bf16( g bf g) |
              \pitchedTrill bf2\startTrillSpan a r4\stopTrillSpan g |
    
              bf4 g bf g8 bf |
              g4 bf g bf( 
    \time 3/4 bf,) g' bf |
              bf,2. \breathe |
    
              g'4 a8-. bf-. fs4-> |
              d'4. f,!8-. d[ f~] |
    \time 4/4 f fs g4\< a8-. bf-. fs4->\mp |
    \time 3/4 d'4. df8-. bf[-. af-.] |
              g4\< a8-. bf-. fs4->\mf |
              d'4. f,!8-. d[ f~] |
    
    % page 2 of notes
    
              f e f4 ef8-- d-- | 
              gf4 bf,4.-> g'8-. |
              b[ g~] g[ b] g,--[ c--] |
              <<\gcaqf4 s4-- >> g'4 f8-- e-- |
              af4 c,4.-> a'8 |
    \time 2/4 c\<[ a~] a b |
    \time 3/4 c4\f-> d8-. ef-. b4-> |
    \time 2/4 g'4. d8 |
              cs4-> ds8 e |
              d4-> e8 f |
              ef4-> f8 gf |
              e4-> fs8 g |
              e4-> fs8 g |
              e4-> fs8[ g] |
    \time 3/4 f->[ g] af[ f->] g[ af] |
              f->[ g] af[ fs->] gs[ a] |
              fs->[ gs] a[ fs->] gs[ a] |
    
    \time 2/4 g4 a8 bf |
    \time 4/4 bf1\< \breathe |
              \pitchedTrill bf2.\startTrillSpan\! b a4\stopTrillSpan |
              \pitchedTrill bf2.\startTrillSpan b g4\stopTrillSpan |
              \pitchedTrill bf2.\startTrillSpan b g16\stopTrillSpan ef d b | 
    \time 2/4 \pitchedTrill g'2\startTrillSpan a % This trill span isn't stopping anything for some reason
    
    \time 3/4 bf,2.~\>\stopTrillSpan |
              bf2. |
              g4\p^"molto legato" bf g |
              bf g8 bf g4 |
              bf g8 bf g16( bf g bf) |
              g4 bf g~( |
              g bf,8)[ g'] bf[ g] |
              bf g bf4 g |
              bf16( g bf g bf,8) g' bf4 |
              g bf g16( bf g bf) |
    
              bf,8 g bf4 g8 bf |
              g4 r4 bf16( g bf g) |
              r4 bf4 g16( bf g bf) |
              g8[ bf] g[ bf] r4 |
              g4 bf8 b~ b4 |
              g fs8-> ds'~ ds4 |
    
              bf8([ g] fs[ d]) f4~ |
              f fs2 |
              g4 a8-. bf-. r4 |
              g2 a4 |
              bf g8-. r8 r4 |
    \time 2/4 f4 e \breathe |
    
    % Page 3 of notes
    
    \time 3/4 g4 a bf |
              fs-_ r g4~\> |
              g a4 bf 
    \time 4/4 r2\! g2\> |
              a bf |
              g1~ |
              <<g1 {s2 s4 s4\!}>> \bar "|."
    
    
 } 
   \midi { }

 
% {\new Staff \with { \consists "Page_turn_engraver"}
% 
%   \fluteThree
% }