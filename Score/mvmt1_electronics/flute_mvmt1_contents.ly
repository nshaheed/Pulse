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
      r4 d8\staccato\< ef,\staccato \hbn gf'16 a bf a | <<\hbn s4\p>> r4 \hbn ds,,4\mf |
      cs''-> ds, fs <<\hb s4\p>> | 
    \time 3/4 r4 \hb \hbn | cs'->\mf ds, \hbn |
    \time 4/4 r4 \hb fs4-> \hb | f!2-> r8 \appoggiatura g,16 cs8\p r4 | 
      g'8\staccato cs,\staccato r g\< bf16 cs! g' bf cs\f g8. |
      gs16 as b as! g8\staccato cs\staccato fs,\staccato b-^ \hbn | 
      as16( b cs e-^) as,!16( b cs! e-^) as,!16( b cs! e-^) <<\hb s4\p>> |
      r4 \hb r4 \hb | cs4\f-> ds, fs \appoggiatura ef16 f\staccato f8.\staccato |
      g8 gs as4-> e cs' | fs,8 f \appoggiatura ef16 f\staccato f8.\staccato <<\hb s4\p>> \hbn |
      r8 g,\< bf16 cs g' bf cs\mf g8. gs16 as b as! |
    \time 2/4 d gs,8. a16 b c b | 
    \time 3/4 c16\<( cs ds fs-^) c16( cs ds! fs!-^) c16( cs ds! fs!-^) | 
      g4:32-^\f a,:32-^ cs:32 | c!2.:32-^ | 
      cs16( d ef fs-^) cs!16( d ef! fs!-^) cs!16( d ef! fs!-^) |
    \time 2/4 \hb g8-^ r |
    \time 4/4 g2.:32\< g8-^ r\! | 
    % TODO: remove the trill lines
    \time 3/4 r4 g2:32\ff | g4-> \pitchedTrill fs\startTrillSpan g\stopTrillSpan
      \pitchedTrill bf,\startTrillSpan b\stopTrillSpan |
    \time 2/4 \pitchedTrill d2->\startTrillSpan ef\stopTrillSpan | 
    \time 3/4 d16\stopTrillSpan df c b-^ df! c b bf-^ c b bf a-^ | g8->[ fs'] bf,[ d] cs g-> |
    fs'[ bf,] d cs fs!16-> d bf! g | g'4-> fs16 d cs bf g'4:32~->\< | g4:32 cs,4\!  ds, |
      fs f2-> | g16 gs as e-> g bf cs d ef,8 fs | f!2.-> | r8 cs'16-> d cs!8 ds,16-> d ds8 e16-> fs | 
      f!2-> g16 gs as e | f2-> g8 gs | as4 e cs'8 bf16 g! | 
    \time 4/4 fs fs' fs,8 g'2.-> | fs8:32-^ r8 c2->  g16( bf d fs!) | cs2->
      g16( bf cs! fs) g,16( bf! d fs!) | g,16( bf! cs! fs!) g,16( bf! d fs!) 
      bf,!( cs! d fs!) bf,!( cs! d g)  | bf,!( cs! d fs!) bf,!( cs! d g) 
      fs!8[ bf,!] d[ cs!] | g->[ fs'] bf,[ d] cs[ g->] fs'![ bf,! ] | d[ cs] g->[ fs'] bf,[ d] cs![ g->] |
      g'4:32-> cs, ds, fs | 
    \time 3/4 f2-> g16( gs as e) | f2-> g8 gs | as4 e cs' | fs, f4.-> b!8 | ds4 e, gs | g!8 bf fs'4 gs, |
      c b2-> | cs16 d e as, b2 | r4 f'4:32-> bf,:32 | d:32 r d16-> df c b | 
      g8->[ fs'] bf,[ d] cs-> r | fs4:32-> f8-^ r bf,4:32-> | fs':32 d:32 cs8-^ r | 
      cs-^ r g16 bf cs! r cs8-^ r | cs-^ r bf16 cs! d r cs8-^ r | cs-^ r cs-^ r cs fs,-^ |
      g16 bf cs d g,16 bf! cs! d fs,,8-^ r | bf'16 cs d fs bf,! cs! d fs! f,,!8 r | 
      cs''16 d fs g cs,! d fs! g fs,,8-^ r | d''16 fs g bf d, fs! g bf! f,,!8 r | 
      d''16 fs g bf d, fs! g bf! fs,,8-^ r | d''16 fs g bf d, fs! g bf! f,,!8 r |
      d''16 fs g bf d, fs! g bf! fs,,8-^ r | d''16 fs g bf d, fs! g bf! d, fs! g bf! |
    \time 4/4 d,16 fs g bf r8 d,16-> fs! g bf! d,16-> fs! g bf! r8 |
    \time 3/4 d,8[ fs] g bf r4 | bf8-^\fff r r4 r4 | bf8-^ r r bf-^ r4 | bf8-^ r r bf8-^ r bf-^ |
      r4 <<{s8 r8} \\ {bf8^^\glissando \once \hideNotes bf,,}>> r4 | 
      R2. * 3 | bf8\staccato\p r8 r2 | R2. | r2 bf8\staccato r8 | R2. * 2 | r2 r8 bf8\staccato | 
      R2. * 2 | r4 bf8\staccato r r4 | R2. | \appoggiatura bf16 e,8\staccato r8 r4 r |
      r bf'8\staccato r r4 | r bf8 r r4 | r bf8 r r4 | 
      \appoggiatura bf16 e,8\staccato r8 r2 | R2. | r4 \grace ef16 ef8\staccato r r4 |
      r8 ef\staccato r2 | r2 ef8\staccato r | r ef\staccato r ef\staccato g'16\sfz-^ bf cs r |
      r4 r8 b,\staccato\p r4 | R2. | r4 b8\staccato r r4 | 
      \autoBeamOff
      b8\staccato r r b\staccato b\staccato r | 
      \autoBeamOn
      r8 b\staccato g'16\sfz( bf cs) r bf,8\staccato\p r8 | 
      r8 \appoggiatura b!16 ef,8\staccato r2 | ef8 r r2 | r4 \hb r | R2. | 
      ef8\staccato r r \appoggiatura b'16 ef,8\staccato\pp r4 | ef8\staccato r <<\hb s4\p>> r4 |
      \hb r4 \hb | r8 g'16  \mf-> bf r2 | r4 r8 f,\staccato\pp \hb | R2. | 
      \appoggiatura ef16 f8\staccato r8 r2 | R2. | r2 f8\staccato r | R2. * 3 | f8\staccato r r2 |
      r4 <<\hb s4\p>> \hb | r4 \hb r | \hb r2 | r4 \hb r | r \hb r | r <<\hb s4\pp>> r4 | 
      r2 \hb | R2. | r4 \hb r | r8 f\staccato r2 | \appoggiatura ef16 f8\staccato r r4 f8\staccato r8 |
      r8 f\staccato r4 f8\staccato r | r2 f8\staccato r8 | f2.~\> | f2.~ | 
      <<f2.{s4 s4 s4\!}>> \bar "|."
    %todo: add cesc to above material
    
      
      

      
}