################################################################################
# Sheet music build rules                                                      #
#                                                                              #
# Inputs:                                                                      #
# - PARTS: All .ly files to build into pdf targets                             #
# - MIDI_PARTS: All .ly files to build into midi targets                       #
# - MAIN_PART: Part which is the core "tune".                                  #
#   Optional, defaults to `tune`                                               #
# - ENG_DIR: Directory in which to put versioned output.                       #
#   Optional, defaults to `engraved`                                           #
################################################################################

# --- CONFIG ----------------------------------------------------------------- #

MAIN_PART ?= tune
ENG_DIR ?= engraved

# --- OUTPUT FILES ----------------------------------------------------------- #

# Normal build
PDF := $(addsuffix .pdf,$(PARTS))
MIDI := $(addsuffix .midi,$(MIDI_PARTS))

OUTFILES := $(PDF) $(MIDI)

# engrave target
OTHER_PARTS := $(filter-out $(MAIN_PART),$(PARTS))

MAIN_ENG := $(ENG_DIR)/$(SONG).pdf
OTHER_ENG := $(patsubst %,$(ENG_DIR)/$(SONG)_%.pdf,$(OTHER_PARTS))

ENG_OUT := $(MAIN_ENG) $(OTHER_ENG)

# --- RULES ------------------------------------------------------------------ #

all: $(OUTFILES)

%.pdf %.midi: %.ly notes.ily $(wildcard ../*.ily)
	lilypond $<

view-%: %.pdf
	@mupdf $<

play: tune.midi
	wildmidi $<

engrave: $(ENG_OUT)

$(ENG_DIR)/$(SONG).pdf: $(MAIN_PART).pdf | $(ENG_DIR)
	cp $< $@

$(OTHER_ENG): $(ENG_DIR)/$(SONG)_%.pdf: %.pdf
	cp $< $@

$(ENG_DIR):
	@mkdir -p $@

.PHONY: clean
clean:
	rm -f $(OUTFILES)
