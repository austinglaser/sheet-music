\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Off to California"
    composer = "Traditional"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \offToCaliforniaChords
      }
      \new Staff {
        \clef treble
        \offToCaliforniaMelody
      }
    >>
    \layout {}
  }

  \score {
    <<
      \unfoldRepeats \offToCaliforniaMelody
    >>
    \midi {}
  }
}
