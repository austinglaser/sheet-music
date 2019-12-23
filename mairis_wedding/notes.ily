\version "2.18.2"
\language "english"

mairisWeddingMelodyA = \relative c' {
 \repeat volta 2 {
   | d8. d16 d8 e g a b4
   | a8 g e g b a b16( d8.)
   | d,8. d16 d8 e g a b4
   | a8 g e c d4 d
 }
}

mairisWeddingMelodyB = \relative c'' {
 \repeat volta 2 {
   | d8. d16 d8 e d c b4
   | a8 g e g b a b16( d8.)
   | d8. d16 d8 e d c b4
   | a8 g e c d4 d
 }
}

mairisWeddingMelody = {
  \key g \major
  \time 4/4

  \mairisWeddingMelodyA
  \mairisWeddingMelodyB
}

mairisWeddingChordsPart = \chordmode {
  | g2 e:min
  | c2 d
  | g2 e:min
  | c2 d
}


mairisWeddingChords = {
  \mairisWeddingChordsPart
  \mairisWeddingChordsPart
}
