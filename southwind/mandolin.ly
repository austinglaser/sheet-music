\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Southwind"
    instrument = "Mandolin"
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
        stringTunings = #mandolin-tuning
      } {
        \southwindMelody
      }
    >>
    \layout {}
  }
}
