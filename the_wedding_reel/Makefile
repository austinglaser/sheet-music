SONG := the_wedding_reel
OUTFILES := \
	tune.pdf \
	tune.midi \
	mandolin.pdf \
	banjo.pdf \

all: $(OUTFILES)

%.pdf %.midi: %.ly notes.ily $(wildcard ../*.ily)
	lilypond $<

view-%: %.pdf
	@mupdf $<

play: tune.midi
	wildmidi $<

.PHONY: clean
clean:
	rm -f $(OUTFILES)
