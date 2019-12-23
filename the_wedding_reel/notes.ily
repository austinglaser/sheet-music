\version "2.18.2"
\language "english"

theWeddingReelMelodyA = \relative c' {
  \partial 8
  d16 e
  \repeat volta 2 {
    | fs8^\markup {\box A} b16 fs a fs e fs d16 cs d e fs a b d
    | e8 fs16 d e fs e d b8 e16 b d b a g

    | fs8 b16 fs a fs e fs d16 cs d e fs a b d
  }
  \alternative {
    { | e8 fs16 d e fs d b a16 b d e d b a g }
    { | e'8 fs16 d e fs d b a16 b d e d8. b16 }
  }
}

theWeddingReelMelodyB = \relative c'' {
  \repeat volta 2 {
    | a8.^\markup {\box B} fs'16 e d e d a8. fs'16 e d e d
    | a16 b d a b d a b d16 b a fs e8 d16 e

    | fs8 b16 fs a fs e fs d16 cs d e fs a b d
  }
  \alternative {
    { | e8 fs16 d e fs d b a16 b d e d8. b16 }
    { | e8 fs16 d e fs d b a16 b d e d b a g }
  }
}

theWeddingReelMelody = {
  \key d \major
  \time 4/4

  \theWeddingReelMelodyA
  \theWeddingReelMelodyB
}

theWeddingReelChordsPart = \chordmode {
  \repeat volta 2 {
    | d2 d2
    | e2:min g2
    | d2 d2

  }
  \alternative {
    { | g2 a4 d4 }
    { | g2 a4 d4 }
  }
}


theWeddingReelChords = {
  s8
  \theWeddingReelChordsPart
  \theWeddingReelChordsPart
}
