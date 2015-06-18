\version "2.18.2"
\language "english"

% A section 4 beat

oneOneFour   = \relative c''' { r16 g g r16 }
oneOneFourAp = \relative c''' { \appoggiatura s16 r16 g g r16 }


oneTwoFour = \relative c''' { g16 g g r }

oneThreeFour = \relative c''' { g16 g g r }

oneFourFour = \relative c''' { r8 g16 g }

% B section 4 beat

twoOneFour   = \relative c''' { g16 g g g }
twoOneFourAp = \relative c''' { \appoggiatura s16 g16 g g g }

twoTwoFour = \relative c''' { g16 g r r }

twoThreeFour = \relative c''' { g16 g g r}

twoFourFour = \relative c''' { r16 r g g }

% A section 3 beat

oneOneThree   = \relative c''' { g16 g g r }
oneOneThreeAp = \relative c''' { \appoggiatura s16 g16 g g r }

oneTwoThree = \relative c''' { r16 g g r }

oneThreeThree = \relative c''' { g16 g g r}

% B section 3 beat

twoOneThree   = \relative c''' { g16 g g g }
twoOneThreeAp = \relative c''' { \appoggiatura s16 g16 g g g }

twoTwoThree = \relative c''' { g16 g r g }

twoThreeThree = \relative c''' { g16 g g r}

% A section 2 beat

oneOneTwo   = \relative c''' { g16 g g r }
oneOneTwoAp = \relative c''' { \appoggiatura s16 g16 g g r }

oneTwoTwo = \relative c''' { r16 g g r }

% B section 2 beat

twoOneTwo   = \relative c''' { g16 g g g }
twoOneTwoAp = \relative c''' { \appoggiatura s16 g16 g g g }

twoTwoTwo = \relative c''' { g16 g r g }

groove = \relative c'' {
  \time 4/4 R1
       R1
       R1
       R1
       \oneOneFourAp \oneTwoFour \oneThreeFour \oneFourFour 
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour 
  \time 2/4  \oneOneTwoAp \oneTwoTwo 
  \time 4/4  \oneOneFour \twoTwoFour \oneThreeFour \oneFourFour 
  \time 3/4  \oneOneThree \oneTwoThree \oneThreeThree 
  \time 4/4  \twoOneFour \twoTwoFour \oneThreeFour \oneThreeFour
       \oneOneFour \oneTwoFour \oneThreeFour \twoFourFour 
  \time 2/4  \oneOneTwo \oneTwoTwo 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
  \time 4/4  \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour 
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \twoOneFour \oneTwoFour \twoThreeFour \twoFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \twoOneFour \oneTwoFour \twoThreeFour \twoFourFour
  \time 3/4  \oneOneThree \twoTwoThree \twoThreeThree 
  \time 4/4  \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \twoFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \oneFourFour
  \time 3/4  \oneOneThree \oneTwoThree \oneThreeThree 
       \twoOneThree \twoTwoThree \oneThreeThree 
  \time 4/4  \oneOneFour \oneTwoFour \twoThreeFour \oneFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \oneFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \oneFourFour
       \oneOneFour \oneTwoFour \oneThreeFour \oneFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \oneThreeFour \oneFourFour
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
  \time 2/4  \twoOneTwo \twoTwoTwo 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
  \time 2/4  \twoOneTwo \twoTwoTwo 
  \time 4/4  \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
  \time 2/4  \twoOneTwo \twoTwoTwo 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
  \time 4/4  \twoOneFour \twoTwoFour \twoThreeFour \twoThreeFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
       \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
  \time 4/4  \twoOneFour \twoTwoFour \twoThreeFour \twoFourFour 
  \time 3/4  \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
       \twoOneThree \twoTwoThree \twoThreeThree 
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
        R2.
}