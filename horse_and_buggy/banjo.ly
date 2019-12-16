\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "Horse and Buggy-O"
    instrument = "Banjo (Open-A Tuning)"
    composer = "Traditional"
    arranger = "Art Stamper"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \horseAndBuggyHarmony
      }
      \new Staff {
        \clef treble
        \horseAndBuggyMelody
      }
      \new TabStaff \with {
        stringTunings = #banjo-open-g-tuning
      } {
        \transpose a g, \horseAndBuggyMelody
      }
    >>
    \layout {}
  }
}
