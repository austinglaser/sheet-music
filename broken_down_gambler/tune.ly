\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Broken Down Gambler"
    composer = "Skillet Lickers"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \brokenDownGamblerChords
      }
      \new Staff {
        \clef treble
        \brokenDownGamblerMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \brokenDownGamblerMelody
    >>
    \midi {}
  }
}

