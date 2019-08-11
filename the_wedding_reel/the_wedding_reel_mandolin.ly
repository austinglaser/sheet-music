\version "2.18.2"
\language "english"

\include "the_wedding_reel_notes.ily"

\book {
  \header {
    title = "The Wedding Reel"
    instrument = "Mandolin"
    composer = "Traditional"
    arranger = "The Boulder Irish Session"
  }

  \score {
    <<
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
