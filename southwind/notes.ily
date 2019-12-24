\version "2.18.2"
\language "english"

southwindMelodyA = \relative c'' {
  \partial 4
  c4
  \repeat volta 2 {
    | b4.^\markup {\box A} a8 g4
    | b4. c8 d4
    | a4.( a8 a4)
    | a2 c4
    | b4. a8 g4
    | e4. d8 e4
    | g4.( g8 g4)
  }
  \alternative {
    { | g2 c4 }
    { | g2 d'4 }
  }
}

southwindMelodyB = \relative c''' {
  \repeat volta 2 {
    | g2^\markup {\box B} g4
    | g4. fs8 e4
    | d2 d4
    | d2 c4
    | b4. a8 g4
    | b4. c8 d4
    | a2 a4
    | a2 d4
    | g4. a8 fs4
    | g4. fs8 e4
    | d2 d4
    | d2 c4
    | b4. a8 g4
    | a8 c4. fs,4
    | g2.
  }
  \alternative {
    { | g2 d'4 }
    { | g,2. }
  }
}

southwindMelody = {
  \key g \major
  \time 3/4

  \southwindMelodyA
  \southwindMelodyB
}

southwindChordsA = \chordmode {
  \repeat volta 2 {
    | g2.
    | g2.
    | d2.
    | d2.
    | g2.
    | c2 d4
    | g2.
  }
  \alternative {
    { | g2 c4 }
    { | g2. }
  }
}

southwindChordsB = \chordmode {
  \repeat volta 2 {
    | g2.
    | c2.
    | g2.
    | d2.
    | g2.
    | g2.
    | d2.
    | d2.
    | g2.
    | c2.
    | g2.
    | g2 c4
    | g2.
    | d2.
    | g2.
  }
  \alternative {
    { | g2. }
    { | g2. }
  }
}

southwindChords = {
  s4
  \southwindChordsA
  \southwindChordsB
}
