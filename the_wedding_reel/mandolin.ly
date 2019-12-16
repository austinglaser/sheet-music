\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "The Wedding Reel"
    instrument = "Mandolin"
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
      \new TabStaff \with {
        stringTunings = #mandolin-tuning
      } {
        \theWeddingReelMelody
      }
    >>
    \layout {}
  }
}
