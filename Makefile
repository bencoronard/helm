.PHONY: all clean

BUILD_DIR := build
OUTPUT    := $(BUILD_DIR)/manifest.yaml
RELEASE   := prototype
CHART_DIR := .

all: $(OUTPUT)

$(OUTPUT): | $(BUILD_DIR)
	helm template $(RELEASE) $(CHART_DIR) > $(OUTPUT)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)