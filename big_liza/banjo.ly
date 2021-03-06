\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Big Liza"
    instrument = "Banjo (Open-A Tuning)"
    composer = "Traditional"
    arranger = "The Glaser-Church Clan"
    tagline = ""
  }

  \score {
    <<
      \new Staff {
        \clef treble
        \bigLizaMelody
      }
      \new TabStaff \with {
        stringTunings = #banjo-open-g-tuning
      } {
        \transpose a g, \bigLizaMelody
      }
    >>
    \layout {}
  }
}
