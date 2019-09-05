outdir := out
pandoc := ~/.cabal/bin/pandoc
pandoc-crossref := $(wildcard ~/.cabal/bin/pandoc-crossref)
bilder-jpg := $(wildcard images/*.jpg)
bilder-jpg-copied := $(bilder-jpg:%=$(outdir)/%)
bilder-png := $(wildcard images/*.png)
bilder-png-copied := $(bilder-png:%=$(outdir)/%)
bilder-svg := $(wildcard images/*.svg)
bilder-pdf := $(bilder-svg:%.svg=$(outdir)/images/%.pdf)

all: $(outdir)/report-gutsy-gibbons.pdf
	cd $(outdir) && pdflatex -halt-on-error report-gutsy-gibbons.tex && bibtex report-gutsy-gibbons

$(outdir)/report-gutsy-gibbons.pdf: $(outdir)/report-gutsy-gibbons.tex

$(outdir)/images/%.pdf: images/%.svg
	@mkdir -p $(outdir)/images
	inkscape --export-pdf $@ $<

$(outdir)/images/%.jpg: images/%.jpg
	@mkdir -p $(outdir)/images
	cp $< $@

$(outdir)/images/%.png: images/%.png
	@mkdir -p $(outdir)/images
	cp $< $@

$(outdir)/report-gutsy-gibbons.tex: project-report.md vorlage-hc18.tex $(bilder-jpg-copied) $(bilder-png-copied) $(bilder-pdf) report-gutsy-gibbons.bib
	@mkdir -p $(outdir)
	cp report-gutsy-gibbons.bib $(outdir)
	$(pandoc) --from=markdown --to=latex --template=./vorlage-hc18.tex --top-level-division=chapter --listings --filter=$(pandoc-crossref) --natbib --bibliography=report-gutsy-gibbons.bib --output=$(outdir)/report-gutsy-gibbons.tex project-report.md

clean:
	rm -f $(outdir)/report-gutsy-gibbons.aux
	rm -f $(outdir)/report-gutsy-gibbons.brf
	rm -f $(outdir)/report-gutsy-gibbons.glo
	rm -f $(outdir)/report-gutsy-gibbons.gls
	rm -f $(outdir)/report-gutsy-gibbons.ilg
	rm -f $(outdir)/report-gutsy-gibbons.ist
	rm -f $(outdir)/report-gutsy-gibbons.lof
	rm -f $(outdir)/report-gutsy-gibbons.log
	rm -f $(outdir)/report-gutsy-gibbons.lol
	rm -f $(outdir)/report-gutsy-gibbons.out
	rm -f $(outdir)/report-gutsy-gibbons.toc
	rm -f $(outdir)/report-gutsy-gibbons.bbl
	rm -f $(outdir)/report-gutsy-gibbons.blg
	rm -f $(outdir)/report-gutsy-gibbons.fdb_latexmk
	rm -f $(outdir)/report-gutsy-gibbons.fls
	rm -f $(outdir)/report-gutsy-gibbons.lot

reallyclean: clean
	rm -rf $(outdir)/report-gutsy-gibbons.pdf
	rm -f $(outdir)/report-gutsy-gibbons.tex
	rm -rf $(outdir)/images
