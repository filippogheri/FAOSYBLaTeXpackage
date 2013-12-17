
PACKAGE=faosyb

SAMPLES = faosample.tex faosample2.tex

WD = $(shell pwd)
CURRDIR = $(notdir ${WD})


PDF = $(PACKAGE).pdf ${SAMPLES:%.tex=%.pdf}


all:  ${PDF} 
	for x in ${DIRS}; do cd $$x; ${MAKE} $@; cd ..; done

%.pdf:  %.dtx   $(PACKAGE).cls ${PDFIMAGES}
	pdflatex $<
	- bibtex $*
	pdflatex $<
	- makeindex -s gind.ist -o $*.ind $*.idx
	- makeindex -s gglo.ist -o $*.gls $*.glo
	pdflatex $<
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $*.log) \
	do pdflatex $<; done


%.cls:   %.ins %.dtx  
	pdflatex $<

%.pdf:  %.tex   $(PACKAGE).cls
	pdflatex $<
	- bibtex $*
	pdflatex $*
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $*.log) \
	do pdflatex $<; done

faosample2.pdf: part1.tex


.PRECIOUS:  $(PACKAGE).cfg $(PACKAGE).cls


clean:
	$(RM)  $(PACKAGE).cls *.log *.aux \
	*.glo *.idx *.toc *.tbc *.lom *.loc \
	*.ilg *.ind *.out *.lof *.hd \
	*.lot *.bbl *.blg *.gls $(PACKAGE).sty *.ist \
	*.dvi *.ps *.thm *.tgz *.zip
	for x in ${DIRS}; do cd $$x; ${MAKE} $@; cd ..; done

distclean: clean
	$(RM) $(PDF) 
	for x in ${DIRS}; do cd $$x; ${MAKE} $@; cd ..; done

#
# Archive for the distribution. Includes typeset documentation
#
archive:  all clean
	cd ..; \
	tar -czvf $(PACKAGE).tgz  --exclude 'debug*' \
	--exclude '*~' --exclude '*.tgz' --exclude '*.zip'  \
	--exclude CVS $(CURRDIR); \
	mv $(PACKAGE).tgz $(CURRDIR); \
	cd $(CURRDIR)


zip:  all clean
	cd ..; \
	zip -r  $(PACKAGE).zip $(CURRDIR) \
	-x 'debug*' -x '*~' -x '*.tgz' -x '*.zip' -x CVS -x '*/CVS/*'; \
	mv $(PACKAGE).zip $(CURRDIR); \
	cd $(CURRDIR)
