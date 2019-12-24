\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "Charleston Gals"
    instrument = "Banjo (Double-D Tuning)"
    composer = "Traditional"
    arranger = "Ken Kolodner"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \charlestonGalsChords
      }
      \new Staff {
        \clef treble
        \charlestonGalsMelody
      }
      \new TabStaff \with {
        stringTunings = #banjo-double-d-tuning
      } {
        \transpose c c, \charlestonGalsMelody
      }
    >>
    \layout {}
  }
}

