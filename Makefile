
DOCS=	draft-lear-opsawg-mud-reporter.txt \
	draft-lear-opsawg-mud-reporter.xml \
	draft-lear-opsawg-mud-reporter.html

all: $(DOCS)

clean:
	rm -f draft-lear-opsawg-mud-reporter.xml
	rm -f draft-lear-opsawg-mud-reporter.html
	rm -f draft-lear-opsawg-mud-reporter.txt
	rm -f *.yang

tree:
	pyang --ietf -f tree ietf-mud-reporter.yang

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<




