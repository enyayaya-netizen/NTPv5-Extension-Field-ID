# Makefile for building IETF Internet-Draft

DRAFT = draft-ntpv5-extension-field-id
VERSION = latest
XML_FILE = $(DRAFT).xml
TXT_FILE = $(DRAFT)-$(VERSION).txt
HTML_FILE = $(DRAFT)-$(VERSION).html

.PHONY: all clean txt html check install-deps

all: txt html

# Generate text version
txt: $(TXT_FILE)

$(TXT_FILE): $(XML_FILE)
	@echo "Building text version..."
	@if command -v xml2rfc >/dev/null 2>&1; then \
		xml2rfc --text $(XML_FILE) -o $(TXT_FILE); \
	else \
		echo "Error: xml2rfc is not installed."; \
		echo "Install with: pip install xml2rfc"; \
		exit 1; \
	fi

# Generate HTML version
html: $(HTML_FILE)

$(HTML_FILE): $(XML_FILE)
	@echo "Building HTML version..."
	@if command -v xml2rfc >/dev/null 2>&1; then \
		xml2rfc --html $(XML_FILE) -o $(HTML_FILE); \
	else \
		echo "Error: xml2rfc is not installed."; \
		echo "Install with: pip install xml2rfc"; \
		exit 1; \
	fi

# Check XML syntax
check:
	@echo "Checking XML syntax..."
	@if command -v xml2rfc >/dev/null 2>&1; then \
		xml2rfc $(XML_FILE) --v3 --no-network 2>&1 | head -20; \
		echo "Syntax check complete."; \
	else \
		echo "Error: xml2rfc is not installed."; \
		echo "Install with: pip install xml2rfc"; \
		exit 1; \
	fi

# Install dependencies
install-deps:
	@echo "Installing xml2rfc..."
	pip install xml2rfc

# Clean generated files
clean:
	rm -f $(TXT_FILE) $(HTML_FILE)
	rm -f *.txt *.html

# Help
help:
	@echo "Available targets:"
	@echo "  all          - Build both text and HTML versions (default)"
	@echo "  txt          - Build text version only"
	@echo "  html         - Build HTML version only"
	@echo "  check        - Check XML syntax"
	@echo "  install-deps - Install xml2rfc tool"
	@echo "  clean        - Remove generated files"
	@echo "  help         - Show this help message"
