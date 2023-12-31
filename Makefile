# Name of the final standalone executable
TARGET = MeTTaLog

# Prolog source files
SRC = metta_vspace/pyswip/metta_interp.pl

# SWI-Prolog compiler flags
SWIPL_FLAGS = --stand_alone=true -O

# List of SWI-Prolog packs to install
PACKS = predicate_streams logicmoo_utils dictoo  # replace with the packs you want

all: clean install_packs $(TARGET)

$(TARGET):
	@echo "Creating standalone binary..."
	swipl -l $(SRC) -g "qcompile_mettalog -> halt(0) ; halt(1)."  -- --repl
	if [ $$? -eq 1 ]; then echo "Error creating binary."; exit 1; fi
	@echo "Done."

install_packs:
	for pack in $(PACKS); do \
		echo "Installing $$pack..."; \
		swipl -g "pack_install($$pack, [upgrade(true),global(true)]),halt"; \
	done

clean:
	rm -f $(TARGET)

