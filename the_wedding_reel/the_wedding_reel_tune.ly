\version "2.18.2"
\language "english"

\include "the_wedding_reel_notes.ily"

\book {
  \header {
    title = "The Wedding Reel"
    composer = "Traditional"
    arranger = "The Boulder Irish Session"
  }

  \score {
    \new Staff {
      \clef treble
      \theWeddingReelMelody
    }
    \layout {}
  }
}
