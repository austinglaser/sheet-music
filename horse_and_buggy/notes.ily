\version "2.18.2"
\language "english"

% Recording: http://www.artstamper.com/music/samples/Horse&Buggy-O.mp3

horseAndBuggyMelodyA = \relative c' {
  \partial 8
  e16 fs
  \repeat volta 2 {
    | a8^\markup {\box A} a16 cs b8 a16 b cs16 e8 fs16 e cs b a
    | a8 a16 b cs b a8 fs16 d e fs e8 e16 fs
    | a8 a16 cs b8 a16 b cs16 e8 fs16 e8 e8~
  }
  \alternative {
    { | e16 gs e d cs b a e fs a8 b16 a8 e16 fs }
    { | e'16\repeatTie gs e d cs b a e fs a8 b16 a8 fs'~ }
  }
}

horseAndBuggyMelodyB = \relative c'' {
  \repeat volta 2 {
    | fs8.^\markup {\box B} e16 fs e d e fs a8 b16 a fs e d
    | cs16 e8 fs16 e8 cs16 d e fs e d cs a8 a16
    | fs'8. e16 fs e d e fs a8 b16 a8 e~
  }
  \alternative {
    { | e16 gs e d cs b a e fs a8 b16 a8 fs'\laissezVibrer }
    { | e16\repeatTie gs e d cs b a e fs a8 b16 a8 e16 fs }
  }
}

horseAndBuggyMelody = {
  \key a \major
  \time 4/4

  \horseAndBuggyMelodyA
  \horseAndBuggyMelodyB
}

horseAndBuggyHarmonyA = \chordmode {
  \repeat volta 2 {
    | a4 e4 a2
    | a2 d4 e4
    | a4 e4 a2
  }
  \alternative {
    { | e2 a2 }
    { | e2 a2 }
  }
}

horseAndBuggyHarmonyB = \chordmode {
  \repeat volta 2 {
    | d1
    | a1
    | d1
  }
  \alternative {
    { | e2 a2 }
    { | e2 a2 }
  }
}

horseAndBuggyHarmony = {
  s8
  \horseAndBuggyHarmonyA
  \horseAndBuggyHarmonyB
}
