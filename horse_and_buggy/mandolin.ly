\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Horse and Buggy-O"
    instrument = "Mandolin"
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
        stringTunings = #mandolin-tuning
      } {
        \horseAndBuggyMelody
      }
    >>
    \layout {}
  }
}
