\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Charleston Gals"
    instrument = "Mandolin"
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
        stringTunings = #mandolin-tuning
      } {
        \charlestonGalsMelody
      }
    >>
    \layout {}
  }
}
