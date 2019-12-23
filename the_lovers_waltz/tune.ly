\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "The Lover's Waltz"
    composer = "Jay Ungar, Molly Mason"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \theLoversWaltzHarmony
      }
      \new Staff {
        \clef treble
        \theLoversWaltzMelody
      }
    >>
    \layout {}
  }
  \score {
    <<
      \unfoldRepeats \theLoversWaltzMelody
      \unfoldRepeats \theLoversWaltzHarmony
    >>
    \midi {
      \tempo 4 = 80
    }
  }
}
