SONG := the_wedding_reel
OUTFILES := \
	$(SONG)_tune.pdf \
	$(SONG)_mandolin.pdf \
	$(SONG)_banjo.pdf \

all: $(OUTFILES)

%.pdf: %.ly $(SONG)_notes.ily $(wildcard ../*.ily)
	lilypond $<

view-%: $(SONG)_%.pdf
	@mupdf $<

.PHONY: clean
clean:
	rm -f $(OUTFILES)
