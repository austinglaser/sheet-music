SONG := the_wedding_reel
OUTFILES := \
	$(SONG)_tune.pdf \
	$(SONG)_tune.midi \
	$(SONG)_mandolin.pdf \
	$(SONG)_banjo.pdf \

all: $(OUTFILES)

%.pdf %.midi: %.ly $(SONG)_notes.ily $(wildcard ../*.ily)
	lilypond $<

view-%: $(SONG)_%.pdf
	@mupdf $<

play: $(SONG)_tune.midi
	wildmidi $<

.PHONY: clean
clean:
	rm -f $(OUTFILES)
