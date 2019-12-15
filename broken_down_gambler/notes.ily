\version "2.18.2"
\language "english"

% Recording: https://www.youtube.com/watch?v=a4qXe592xhU (slightly different version)

brokenDownGamblerMelodyA = \relative c'' {
  \repeat volta 2 {
    | g8^\markup {\box A} g'16 a g e d c b a g b a g e fs
    | g16 a g fs e d b c d e d c b g a b
    | g8 g''16 a g e d c b a g b a g e fs
    | g16 a g fs e d b c d g8 g16 g4
  }
}

brokenDownGamblerMelodyB = \relative c''' {
  \repeat volta 2 {
    | b4^\markup {\box B} b8. a16 g a g e d8 d8
    | e16 a8 a16~ a16 b a g e g a b a8 g8
    | b4 b8. a16 g a g e d8 <d g>
    | <d g>8 e16 fs g e d c b g a b g4
  }
}

brokenDownGamblerMelody = {
  \key g \major
  \time 4/4

  \brokenDownGamblerMelodyA
  \brokenDownGamblerMelodyB
}

brokenDownGamblerHarmonyA = \chordmode {
  \repeat volta 2 {
    | g1
    | g1
    | g1
    | d2 g2
  }
}

brokenDownGamblerHarmonyB = \chordmode {
  \repeat volta 2 {
    | g1
    | d1
    | g1
    | d2 g2
  }
}

brokenDownGamblerHarmony = {
  \brokenDownGamblerHarmonyA
  \brokenDownGamblerHarmonyB
}
