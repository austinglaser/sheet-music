\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "The Wedding Reel"
    composer = "Traditional"
    arranger = "The Boulder Irish Session"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \theWeddingReelHarmony
      }
      \new Staff {
        \clef treble
        \theWeddingReelMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \theWeddingReelMelody
      \unfoldRepeats \theWeddingReelHarmony
    >>
    \midi {}
  }
}
