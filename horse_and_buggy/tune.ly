\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Horse and Buggy-O"
    composer = "Traditional"
    arranger = "Art Stamper"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \horseAndBuggyChords
      }
      \new Staff {
        \clef treble
        \horseAndBuggyMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \horseAndBuggyMelody
      \unfoldRepeats \horseAndBuggyChords
    >>
    \midi {}
  }
}
