\version "2.18.2"
\language "english"

offToCaliforniaMelodyA = \relative c' {
  \partial 4
  \tuplet 3/2 { d8( e fs) }
  \repeat volta 2 {
    | g8^\markup {\box A} fs g b a g e d
    | g8 b d g e4 \tuplet 3/2 {d8( e fs)}
    | g8 fs g d e d b g
    | a8 b a g e4 \tuplet 3/2 { d8( e fs) }
    | g8 fs g b a g e d
    | g8 b d g e4 \tuplet 3/2 { d8( e fs) }
    | g8 fs g d e d b g
  }
  \alternative {
    { | \tuplet 3/2 {a8( b a)} e8 fs g4 \tuplet 3/2 { d8( e fs) } }
    { | \tuplet 3/2 {a8( b a)} e8 fs g4 e'8 fs }
  }
}

offToCaliforniaMelodyB = \relative c''' {
  \repeat volta 2 {
    | g8^\markup {\box B} fs e g fs e d fs
    | e8 d e fs e d b fs'
    | g8 fs e d e d b g
    | a8 b a g e4 \tuplet 3/2 {d8( e fs)}
    | g8 fs g b a g e d
    | g8 b d g e4 \tuplet 3/2 {d8( e fs)}
    | g8 fs g d e d b g
  }
  \alternative {
    { | \tuplet 3/2 {a8( b a)} e8 fs g4 e'8 fs }
    { | \tuplet 3/2 {a,8( b a)} e8 fs g2 }
  }
}

offToCaliforniaMelody = {
  \key g \major
  \time 4/4

  \offToCaliforniaMelodyA
  \offToCaliforniaMelodyB
}

offToCaliforniaChordsA = \chordmode {
  \repeat volta 2 {
    | g2 d
    | g2 c
    | g2 e:min
    | a2:min e:min
    | g2 d
    | g2 c
    | g2 e:min
  }
  \alternative {
    { | d2 g }
    { | d2 g }
  }
}

offToCaliforniaChordsB = \chordmode {
  \repeat volta 2 {
    | g2 b:min
    | c2 d
    | g2 e:min
    | a2:min e:min
    | g2 d
    | g2 c
    | g2 e:min
  }
  \alternative {
    { | d2 g }
    { | d2 g }
  }
}

offToCaliforniaChords = {
  s4
  \offToCaliforniaChordsA
  \offToCaliforniaChordsB
}
