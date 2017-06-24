BUILD := $(abspath ./download)
OUTPUT_NAME := $(BUILD)/DatetimeFormatConverter.alfredworkflow
SRC := $(abspath ./workflow)

setup:
	mkdir -p $(BUILD)

package: setup
	COPYFILE_DISABLE=1 tar czf $(OUTPUT_NAME) --directory $(SRC) .

install: clean package
	open $(OUTPUT_NAME)

clean:
	rm -rf $(OUTPUT_NAME)

.DEFAULT_GOAL := package
