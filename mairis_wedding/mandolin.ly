\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Mairi's Wedding"
    instrument = "Mandolin"
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
      \new TabStaff \with {
        stringTunings = #mandolin-tuning
      } {
        \mairisWeddingMelody
      }
    >>
    \layout {}
  }
}
