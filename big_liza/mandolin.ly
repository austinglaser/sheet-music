\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Big Liza"
    instrument = "Mandolin"
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
        stringTunings = #mandolin-tuning
      } {
        \bigLizaMelody
      }
    >>
    \layout {}
  }
}
