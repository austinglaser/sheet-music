\version "2.18.2"
\language "english"

\include "notes.ily"
\include "../banjo.ily"

\book {
  \header {
    title = "The Wedding Reel"
    instrument = "Banjo (Double-D Tuning)"
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
        stringTunings = #banjo-double-d-tuning
      } {
        \transpose c c, \theWeddingReelMelody
      }
    >>
    \layout {}
  }
}
