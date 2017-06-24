BUILD := $(abspath ./download)
OUTPUT_NAME := $(BUILD)/DatetimeFormatConverter.alfredworkflow
SRC := $(abspath ./workflow)

setup:
	@mkdir -p $(BUILD)

package: setup
	@cd $(SRC) && zip -rq $(OUTPUT_NAME) . || echo "Unable to create zip file"
	@echo "Successfully created output: $(OUTPUT_NAME)"
	@echo "Open to install."

install: clean package
	open $(OUTPUT_NAME)

clean:
	rm -rf $(OUTPUT_NAME)

.DEFAULT_GOAL := package
