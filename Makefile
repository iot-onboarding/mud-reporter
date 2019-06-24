
DOCS=	draft-lear-opsawg-mud-reporter.txt \
	draft-lear-opsawg-mud-reporter.xml \
	draft-lear-opsawg-mud-reporter.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


