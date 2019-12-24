\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Charleston Gals"
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
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \charlestonGalsMelody
      \unfoldRepeats \charlestonGalsChords
    >>
    \midi {
      \tempo 4 = 90
    }
  }
}
