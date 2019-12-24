\version "2.18.2"
\language "english"

\include "../big_liza/notes.ily"
\include "../broken_down_gambler/notes.ily"
\include "../charleston_gals/notes.ily"
\include "../the_lovers_waltz/notes.ily"
\include "../mairis_wedding/notes.ily"
\include "../off_to_california/notes.ily"
\include "../southwind/notes.ily"
\include "../the_wedding_reel/notes.ily"

\book {
  \paper {
    print-all-headers = ##t
  }

  \header {
    title = "Glaser-Church Songbook"
    subtitle = "First Edition"
    tagline = ##f
  }
  \pageBreak

  % --- A ---
  \bookpart {
    \header {
      title = "A Major"
      subtitle = ##f
    }

    \markup \vspace #5

    % Big Liza
    \score {
      \header {
        title = "Big Liza"
        composer = "Traditional"
        arranger = "The Glaser-Church Clan"
        subtitle = ##f
      }
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
  }

  % --- D ---
  \bookpart {
    \header {
      title = "D Major"
      subtitle = ##f
    }

    \markup \vspace #5

    % Charleston Gals
    \score {
      \header {
        title = "Charleston Gals"
        composer = "Traditional"
        arranger = "Ken Kolodner"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \charlestonGalsChords
        }
        \new Staff {
          \clef treble
          \charlestonGalsMelody
        }
      >>
      \layout {}
    }

    % The Lover's Waltz
    \score {
      \header {
        title = "The Lovers's Waltz"
        composer = "Jay Unger, Molly Mason"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \theLoversWaltzChords
        }
        \new Staff {
          \clef treble
          \theLoversWaltzMelody
        }
      >>
      \layout {}
    }

    \markup \vspace #5

    % The Wedding Reel
    \score {
      \header {
        title = "The Wedding Reel"
        composer = "Traditional"
        arranger = "The Boulder Irish Session"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \theWeddingReelChords
        }
        \new Staff {
          \clef treble
          \theWeddingReelMelody
        }
      >>
      \layout {}
    }
  }

  % --- G ---
  \bookpart {
    \header {
      title = "G Major"
      subtitle = ##f
    }

    \markup \vspace #5

    % Broken-Down Gambler
    \score {
      \header {
        title = "Broken Down Gambler"
        composer = "Skillet Lickers"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \brokenDownGamblerChords
        }
        \new Staff {
          \clef treble
          \brokenDownGamblerMelody
        }
      >>
      \layout {}
    }

    % Mairi's Wedding
    \score {
      \header {
        title = "Mairi's Wedding"
        composer = "Traditional"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \mairisWeddingChords
        }
        \new Staff {
          \clef treble
          \mairisWeddingMelody
        }
      >>
      \layout {}
    }

    \markup \vspace #10

    % Off to California
    \score {
      \header {
        title = "Off to California"
        composer = "Traditional"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \offToCaliforniaChords
        }
        \new Staff {
          \clef treble
          \offToCaliforniaMelody
        }
      >>
      \layout {}
    }

    % Southwind
    \score {
      \header {
        title = "Southwind"
        composer = "Traditional"
        subtitle = ##f
      }
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \southwindChords
        }
        \new Staff {
          \clef treble
          \southwindMelody
        }
      >>
      \layout {}
    }
  }
}
