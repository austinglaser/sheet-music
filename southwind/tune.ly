\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Southwind"
    composer = "Traditional"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \southwindChords
      }
      \new Staff {
        \clef treble
        \southwindMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \southwindMelody
      \unfoldRepeats \southwindChords
    >>
    \midi {
      \tempo 4 = 84
    }
  }
}
