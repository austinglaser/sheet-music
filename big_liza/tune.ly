\version "2.18.2"
\language "english"

\include "notes.ily"

\book {
  \header {
    title = "Big Liza"
    composer = "Traditional"
    arranger = "The Glaser-Church Clan"
    tagline = ""
  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \bigLizaChords
      }
      \new Staff {
        \clef treble
        \bigLizaMelody
      }
    >>
    \layout {}
  }
  \score {
    \unfoldRepeats \bigLizaMelody
    \midi {}
  }
}
