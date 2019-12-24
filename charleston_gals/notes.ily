\version "2.18.2"
\language "english"

charlestonGalsMelodyA = \relative c' {
  \repeat volta 2 {
    | d8 e fs e d e fs e
    | d8 e fs d( g4) g
    | a8( <g b>4) a8( <g b>4) a8 b
    | <g c>4 <g b>4 a2
    | d,8 e fs e d e fs e
    | d8 e fs d( g4) g
    | fs4 fs8 g fs e d e
  }
  \alternative {
    { | fs8 d e fs d4 d}
    { | fs8 d e fs d a' \tuplet 3/2 {a8 b cs} }
  }
}

charlestonGalsMelodyB = \relative c'' {
  \repeat volta 2 {
    | d4 d2 a8 b
    | c4 b a a8 b
    | c4 c2 d8 c
    | b8 g4. g4 \tuplet 3/2 {a8 b cs}
    | d4 d2 a8 b
    | c4 b a2
    | fs8 e fs g fs e d e
  }
  \alternative {
    { | fs8 d e fs d a' \tuplet 3/2 {a8 b cs} }
    { | fs,8 d e4 d2 }
  }
}

charlestonGalsMelody = {
  \key d \major
  \time 4/4

  \charlestonGalsMelodyA
  \charlestonGalsMelodyB
}

charlestonGalsChordsA = \chordmode {
  \repeat volta 2 {
    | d1
    | d2 g2
    | g1
    | c2 d2
    | d1
    | d2 g2
    | d1
  }
  \alternative {
    { | a2 d2 }
    { | a2 d2 }
  }
}

charlestonGalsChordsB = \chordmode {
  \repeat volta 2 {
    | d1
    | c2 d2
    | c1
    | g1
    | d1
    | c2 d2
    | d1
  }
  \alternative {
    { | a2 d2 }
    { | a2 d2 }
  }
}

charlestonGalsChords = {
  \charlestonGalsChordsA
  \charlestonGalsChordsB
}
