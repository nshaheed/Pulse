\version "2.18.2"
\language "english"

hb = \relative c' {
  \appoggiatura ef!16 f16\staccato f8.\staccato
  
}

hbn = \relative c' {
  \appoggiatura f16 gf!16\staccato gf8.\staccato
}

glstp = \relative c'''' {
 %bf8\glissando <\hideNotes bf, r>8
}

glsbtm = \relative c''' {
  s8 r8
}

fluteOne = 
  \relative c'' {
    % TODO group 8th notes by two beats
    \clef "treble"
    \time 4/4
    \set Timing.beamExceptions = #'()
    %\set Timing.beatStructure  = #'(2 2 2 2)
    \numericTimeSignature
    
    
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #2
    \set Staff.extraNatural = ##f
    \tempo \markup {
     \note-by-number #2 #0 #UP
     "= Heart Beat"
    }
    %\tempo 4 = 120

    % uncomment when done updating to preserve measure num
    
    % \override Score.BarNumber.break-visibility = ##(#t #t #t)
%     \set Score.currentBarNumber = #1
    R1*4 |
    
    <<\hb s4\p>> r4 \hb r4 | \hb \hb r2
    
    \time 2/4 \hb \appoggiatura f,16 c'8\staccato r |
    
    \time 4/4 <<\hb s4\< >> \appoggiatura f,16 c'8\staccato d\staccato <<\hb s4\p>> r4 |
    \time 3/4 \hb r4 \hb |
    \time 4/4 \appoggiatura f,16 c'8\staccato\<[ d\staccato] ef,\staccato f\staccato
      <<\hb s4\!>> r4 | \hb r4 \hb \appoggiatura f16 c'16\< d ef d
    \time 2/4 r4\! \hb 
    \time 3/4 \appoggiatura f,16 c'16 d ef d f e8.->\<~ e4
    \time 4/4 <<\hb s4\p>> r4 \hb \hb | r \hb r \hb |
      \appoggiatura f,16 c'8\staccato d\staccato \hb 
      \appoggiatura f,16 c'8\staccato\cresc[ d\staccato] ef,!\staccato f\staccato |
      c'16 d ef d f gf8.->\!\<~ gf8 \appoggiatura ef,16\! f\staccato\mf
      f~ f8 r |
      \hb \hb r4 \hb | 
      \appoggiatura f16 c'8\staccato d\staccato \hb \appoggiatura f,16 
      af'\cresc gf f gf! d ef f ef! | 
    \time 3/4 \hb \appoggiatura f,16 c''2:32\!\< |
    \time 4/4 <<\hb s4\p>> r4 \hb r |
      \hbn r \hbn c,8\staccato r8 | \hb \hbn \hb r4 | \hb r \hb \hbn |
      r4 d8\staccato\< ef,\staccato \hbn gf'16 a bf a | <<\hbn s4\p>> r4 \hbn ef,4\mf |
      df''-> ef, gf <<\hb s4\p>> | 
    \time 3/4 r4 \hb \hbn | df'->\mf ef, \hbn |
    \time 4/4 r4 \hb gf4-> \hb | f2-> r8 \appoggiatura g,16 df'8\p r4 | 
      g8\staccato df\staccato r g,\< bf16 df! g bf df\f g,8. |
      af16 bf cf bf g8\staccato df'\staccato gf,\staccato cf?-^ \hbn | 
      bf16( cf df ff-^) bf,16( cf df ff-^) bf,16( cf df ff-^) <<\hb s4\p>> | \pageTurn
      r4 \hb r4 \hb | df4\f-> ef, gf \appoggiatura ef!16 f\staccato f8.\staccato |
      g!8 af bf4-> e, df' | gf,8 f \appoggiatura ef16 f\staccato f8.\staccato <<\hb s4\p>> \hbn |
      r8 g,\< bf16 df g bf df\mf g,8. af16 bf cf bf! |
    \time 2/4 d af8. a16 b! c! b | 
    \time 3/4 c16\<( df ef gf-^) c,16( df ef! gf!-^) c,16( df ef! gf!-^) | 
      g!4:32-^\f a,:32-^ df:32 | c2.:32-^ | 
      df16( d ef gf-^) df16( d ef! gf!-^) df!16( d ef! gf!-^) |
    \time 2/4 \hb g!8-^ r |
    \time 4/4 g2.:32\< g8-^ r\! | 
    % TODO: remove the trill lines
    \time 3/4 r4 g2:32\ff | g4-> \pitchedTrill fs\startTrillSpan g\stopTrillSpan
      \pitchedTrill as,\startTrillSpan b\stopTrillSpan |
    \time 2/4 \pitchedTrill d2->\startTrillSpan ef\stopTrillSpan | 
    \time 3/4 d16\stopTrillSpan df c b-^ df! c b bf-^ c b bf a-^ | g8->[ fs'] bf,[ d] cs g-> |
    fs'[ bf,] d cs fs!16-> d bf! g | g'4-> fs16 d df bf g'4:32~->\< | g4:32 df4\!  ef, |
      gf f2-> | g16 af bf e,-> g bf df d ef,8 gf | f!2.-> | r8 df'16-> d df8 df,16-> d ef8 e16-> fs | 
      f!2-> g16 af bf e, | f2-> g8 af | bf4 e, df'8 bf!16 g | 
    \time 4/4 fs fs' fs,8 g'2.-> | fs8:32-^ r8 c2->  g16( bf d fs!) | df2->
      g,16( bf df! fs) g,16( bf! d fs!) | g,16( bf! df! fs!) g,16( bf! d fs!) 
      bf,!( df! d fs!) bf,!( df! d g)  | bf,!( df! d fs!) bf,!( df! d g) 
      fs!8[ as,!] d[ cs!] | g->[ fs'] as,[ d] cs[ g->] fs'![ as,! ] | d[ cs] g->[ fs'] as,[ d] cs![ g->] |
      g'4:32-> df ef, gf | 
    \time 3/4 f!2-> g16( af bf e,) | f2-> g8 af | bf4 e, df' | gf, f4.-> b!8 | ds4 e, af | g!8 bf gf'4 af, |
      c b2-> | cs16 d e as, b2 | r4 f'4:32-> bf,:32 | d:32 r d16-> df c b | 
      g8->[ fs'] as,[ d] cs-> r | fs4:32-> f8-^ r bf,4:32-> | fs':32 d:32 df8-^ r | 
      df-^ r g,16 bf df! r df8-^ r | df-^ r bf16 df! d r df8-^ r | df-^ r df-^ r df gf,-^ |
      g!16 bf df d g,16 bf! df! d fs,,8-^ r | bf'16 df d fs bf,! df! d fs! f,,!8 r | 
      df''16 d fs g df! d fs! g fs,,8-^ r | d''16 fs g bf d, fs! g bf! f,,!8 r | 
      d''16 fs g bf d, fs! g bf! fs,,8-^ r | d''16 fs g bf d, fs! g bf! f,,!8 r |
      d''16 fs g bf d, fs! g bf! fs,,8-^ r | d''16 fs g bf d, fs! g bf! d, fs! g bf! |
    \time 4/4 d,16 fs g bf r8 d,16-> fs! g bf! d,16-> fs! g bf! r8 |
    \time 3/4 d,8[ fs] g bf r4 | bf8-^\fff r r4 r4 | bf8-^ r r bf-^ r4 | bf8-^ r r bf8-^ r bf-^ |
      r4 <<{s8 r8} \\ {bf8^^\glissando \once \hideNotes bf,,}>> r4 | 
      R2.  | bf8\staccato\p r8 r2 | r2 bf8\staccato r8 | r2 r8 bf8\staccato | 
      r4 bf8\staccato r r4 | \appoggiatura bf16 e,8\staccato r8 r4 r |
      r bf'8\staccato r r4 | r bf8 r bf8 r8 | 	
      \appoggiatura bf16 e,8\staccato r8 r2 | 
      r8 ef8\staccato r ef\staccato g'16\sfz-^ bf df r |
      r4 r8 b,\staccato\p r4 | 
      \autoBeamOn
      r8 b\staccato g'16\sfz( bf df) r bf,8\staccato\p r8 | 
      r8 \appoggiatura cf16 ef,8\staccato r2 | ef8 r r2 | r4 \hb r | 
      ef8\staccato r r \appoggiatura cf'16 ef,8\staccato\pp r4 | ef8\staccato r <<\hb s4\p>> r4 |
      \hb r4 \hb | r8 g'16  \mf-> bf r2 | r4 r8 f,\staccato\pp \hb | 
      \appoggiatura ef16 f8\staccato r8 r4 f8-. r8 | R2. | f8\staccato r r2 |
      r4 <<\hb s4\p>> \hb | r4 \hb r | \hb r2 |
      \appoggiatura ef16 f8\staccato r r4 f8\staccato r8 |
      f8-. r r4 f8\staccato r8 | f2.~\> | f2.~ | 
      <<f2.{s4 s4 s4\!}>>
      % turns off bar number visibility - was displaying measure
      %		number after the last measure
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \bar "|."
    %todo: add cesc to above material
    
      
      

      
}
    
% \header {
%     title = "movement 1"
%     composer = "Nicholas Shaheed" }
% {\new Staff \with { \consists "Page_turn_engraver"}
% 
% 
%   \fluteOne
% }