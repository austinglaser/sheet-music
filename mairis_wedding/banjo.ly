\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "Mairi's Wedding"
    instrument = "Banjo (Double-D Tuning)"
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
        stringTunings = #banjo-double-d-tuning
      } {
        \transpose c c, \mairisWeddingMelody
      }
    >>
    \layout {}
  }
}
