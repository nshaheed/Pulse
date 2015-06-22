\version "2.18.2"
\language "english"
		
		%#(print-keys-verbose 'flute (current-error-port))

addDur = #(define-scheme-function (parser location m) (ly:music?)
                  (define-music-function (parser location d) (ly:duration?)
                    (map-some-music
                      (lambda (m)
                        (and (ly:duration? (ly:music-property m 'duration))
                             (begin
                                (set! (ly:music-property m 'duration) d)
                                m)))
                      (ly:music-deep-copy m))))

% test = #(define-music-function 
%          (parser location d) (ly:duration?)
%            (set! (ly:music-property as m
%          ; #{
% ;            \pitchedTrill \addDur as #d \startTrillSpan b\stopTrillSpan
% ;          #}
%            )
% 
voicing = \addDur < g a c e a > % dom7, with 7th in bass
padVal  = 2

%% In other flute, both quarter tone scales are labled as "closed-hole flute
%%   scales, look into, it might be switched around

aqfOOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three five))
                              (lh . (b gis ))
                              (rh . (dis ees)))    
  }
  \vspace #padVal
}
aqfOp = \absolute {aqf''_\aqfOOrig}
aqfO = \addDur \aqfOp


aqfCOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three1h))
                              (lh . (b gis ))
                              (rh . (ees)))
  }
  \vspace #padVal
}
aqfCp = \absolute {aqf''_\aqfCOrig}
aqfC = \addDur \aqfCp

aqfer = \addDur \aqfCp
aqferr= \aqfOOrig

cqsOOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . ())
                              (lh . (b))
                              (rh . (ees)))   
  }
  \vspace #padVal 
}
cqsOp = \absolute {cqs'''_\cqsOOrig}
cqsO = \addDur \cqsOp

cqsCOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three four1h))
                              (lh . (b))
                              (rh . (ees)))
    
  }
  \vspace #padVal
  
}
cqsCp = \absolute {cqs'''_\cqsCOrig}
cqsC = \addDur \cqsCp

cqserr = \cqsOOrig

gcaqfOrig = \markup {
  \column {
    {
      \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
      \woodwind-diagram #'flute #'((cc . (one two1h three four five six))
                                  (lh . (b ))
                                  (rh . (c cis)))        
      %\vspace #padVal
      }
      %\vspace #padVal
      %\vspace #0.1
      %\vspace #2
    }
  }
}
gcaqfOp = \absolute {<g' c'' aqf''>_\gcaqfOrig}
gcaqf = \addDur \gcaqfOp

dlowfOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three four))
                              (lh . (b))
                              (rh . (d dis ees)))
    
  }
  \vspace #padVal
}
dlowfOp = \absolute {<d'' f''>_\dlowfOrig}
dlowf = \addDur \dlowfOp

aaqsOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two1h three))
                              (lh . (b))
                              (rh . (ees)))
    
  }
  \vspace #padVal
}
aaqsOp = \absolute {<a' aqs''>_\aaqsOrig}
aaqs   = \addDur \aaqsOp

cscqsOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . ())
                              (lh . (b))
                              (rh . (ees)))
    
  }
  \vspace #padVal
  
}
cscqsOp = \absolute {<cs'' cqs'''>_\cscqsOrig}
cscqs   = \addDur \cscqsOp

gferOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two1h three four six))
                              (lh . (b))
                              (rh . (cis)))
                              % (rh . (ees)))
    
  }
  \vspace #padVal
  
}
gferOp = \absolute {<g'' f'''>_\gferOrig}
gfer   = \addDur \gferOp

ffflatOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three four1h five six1h))
                              (lh . (b))
                              (rh . (ees)))
    
  }
  \vspace #padVal
  
}
ffflatOp = \absolute {<f'' f'''>_\ffflatOrig}
ffflat   = \addDur \ffflatOp

gsgqsOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
    
     % #'((cc . (one two three four five six))
  \woodwind-diagram #'flute #'((cc . (one two three1h six))                               
                              (lh . (b))
                              (rh . (ees)))
    %\vspace #padVal
  }
  
  
}
gsgqsOp = \absolute {<gs' gqs''>_\gsgqsOrig}
gsgqs   = \addDur \gsgqsOp

gsaOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  %  \woodwind-diagram #'flute #'((cc . (one two three four five six))
  \woodwind-diagram #'flute #'((cc . (one two1h three four five six1h))
                              (lh . (b))
                              (rh . (c cis)))
    
  }
  \vspace #padVal
  
}
gsaOp = \absolute {<gs' a''>_\gsaOrig}
gsa   = \addDur \gsaOp

gnfOrig = \markup {
  \rounded-box \pad-to-box #'(0 . 1.5) #'(-1.5 . 5) \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two1h three four six))
                              (lh . (b))
                              (rh . (cis)))
    
  }
  \vspace #padVal
  
}
gnfOp = \absolute {<g'' f'''>_\gnfOrig}
gnf   = \addDur \gnfOp

glowOrig = \markup {
  \rounded-box \override #'(size . .6) {
  \woodwind-diagram #'flute #'((cc . (one two three six))
                              (lh . ())
                              (rh . ()))
    
  }
  \vspace #padVal
  
}
glowOp = \absolute {g'''_\glowOrig}
glow   = \addDur \glowOp

dharm = \addDur <d,\harmonic d d'>