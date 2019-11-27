\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Big Liza"
    composer = "Traditional"
    arranger = "Snotnose and the Rusty Pluckers"
    tagline = ""
  }

  \score {
    \new Staff {
      \clef treble
      \bigLizaMelody
    }
    \layout {}
  }
  \score {
    \unfoldRepeats \bigLizaMelody
    \midi {}
  }
}
