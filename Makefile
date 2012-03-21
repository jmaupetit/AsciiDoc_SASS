TARGET=lorem_ipsum.adoc
OUTPUT=lorem_ipsum.html
THEME=screen

all: html

html: $(TARGET)
	asciidoc -b html5 -a linkcss -a stylesdir=AsciiDoc_SASS/stylesheets -a scriptsdir=AsciiDoc_SASS/js -a themedir=$(PWD)/AsciiDoc_SASS/stylesheets -a theme=$(THEME) $(TARGET)

pdf: $(TARGET)
	asciidoc -b docbook45 $(TARGET)

clean: $(OUTPUT)
	rm $(OUTPUT)
