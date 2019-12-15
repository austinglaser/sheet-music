\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Broken Down Gambler"
    instrument = "Mandolin"
    composer = "Skillet Lickers"
    tagline = ""
  }

  \score {
    <<
      \new Staff {
        \clef treble
        \brokenDownGamblerMelody
      }
      \new TabStaff \with {
        stringTunings = #mandolin-tuning
      } {
        \brokenDownGamblerMelody
      }
    >>
    \layout {}
  }
}

