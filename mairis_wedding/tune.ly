\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Mairi's Wedding"
    composer = "Traditional"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \mairisWeddingChords
      }
      \new Staff {
        \clef treble
        \mairisWeddingMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \mairisWeddingMelody
      \unfoldRepeats \mairisWeddingChords
    >>
    \midi {}
  }
}
