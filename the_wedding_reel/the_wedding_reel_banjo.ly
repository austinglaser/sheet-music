\version "2.18.2"
\language "english"

\include "the_wedding_reel_notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "The Wedding Reel"
    instrument = "Banjo (Double-D Tuning)"
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
        stringTunings = #banjo-double-d-tuning
      } {
        \transpose c c, \theWeddingReelMelody
      }
    >>
    \layout {}
  }
}