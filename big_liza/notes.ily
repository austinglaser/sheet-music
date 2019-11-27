\version "2.18.2"
\language "english"

bigLizaMelodyA = \relative c' {
  \partial 8
  \tuplet 3/2 {e'16( fs gs)}
  \repeat volta 2 {
    | a8^\markup {\box A} fs e cs16 e fs e cs b a8 \tuplet 3/2 {e'16( fs gs)}
    | a8 fs e cs e16 fs8 e16 fs8 \tuplet 3/2 {e16( fs gs)}
    | a8 fs e cs16 e fs e cs b a8 a16 b16
  }
  \alternative {
    { | cs16 b a fs e8 fs a8. b16 a8 \tuplet 3/2 {e'16( fs gs)} }
    { | cs,16 b a fs e8 fs a8. b16 a8 b8 }
  }
}

bigLizaMelodyB = \relative c' {
  \repeat volta 2 {
    | cs'4^\markup {\box B} cs8. cs16 b8 a4 a16 b16
    | cs8 b a <a e> <a fs>4. <a e>8
    | <a fs>8 a b4 b8 cs b a16 b
  }
  \alternative {
    { | cs16 b a fs e8 fs a8. b16 a8 b8 }
    { | cs16 b a fs e8 fs a8. b16 a8 \tuplet 3/2 {e'16( fs gs)} }
  }
}

bigLizaMelody = {
  \key a \major
  \time 4/4

  \bigLizaMelodyA
  \bigLizaMelodyB
}
