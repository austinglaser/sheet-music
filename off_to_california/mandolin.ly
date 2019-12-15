\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Off to California"
    instrument = "Mandolin"
    composer = "Traditional"
    tagline = ""
  }

  \score {
    <<
      \new Staff {
        \clef treble
        \offToCaliforniaMelody
      }
      \new TabStaff \with {
        stringTunings = #mandolin-tuning
      } {
        \offToCaliforniaMelody
      }
    >>
    \layout {}
  }
}
