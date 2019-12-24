\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "Southwind"
    instrument = "Banjo (Open-G Tuning)"
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
      \new TabStaff \with {
        stringTunings = #banjo-open-d-tuning
      } {
        \transpose c c, \southwindMelody
      }
    >>
    \layout {}
  }
}
