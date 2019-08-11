\version "2.18.2"
\language "english"

theWeddingReelMelodyA = \relative c' {
  \partial 4
  d8 e
  \repeat volta 2 {
    | fs4^\markup {\bold A} b8 fs a fs e fs
    | d cs d e fs a b d
    | e4 fs8 d e fs e d
    | b4 e8 b d b a g

    | fs4 b8 fs a fs e fs
    | d cs d e fs a b d
    | e4 fs8 d e fs d b
  }
  \alternative {
    { | a b d e d b a g }
    { | a b d e d4. b8 }
  }
}

theWeddingReelMelodyB = \relative c'' {
  \repeat volta 2 {
    | a4.^\markup {\bold B} fs'8 e d e d
    | a4. fs'8 e d e d
    | a b d a b d a b
    | d b a fs e4 d8 e

    | fs4 b8 fs a fs e fs
    | d cs d e fs a b d
    | e4 fs8 d e fs d b
  }
  \alternative {
    { | a b d e d4. b8 }
    { | a b d e d2 }
  }
}

theWeddingReelMelody = {
  \key d \major
  \time 4/4

  \theWeddingReelMelodyA
  \theWeddingReelMelodyB
}
