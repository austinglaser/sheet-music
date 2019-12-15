\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "Off to California"
    instrument = "Banjo (Open-G Tuning)"
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
        stringTunings = #banjo-open-g-tuning
      } {
        \transpose c c, \offToCaliforniaMelody
      }
    >>
    \layout {}
  }
}
