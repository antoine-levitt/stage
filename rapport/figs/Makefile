OBJ=$(wildcard *.plt)
imagespdf: $(OBJ:plt=pdf) schema.pdf
%.pdf: %.plt
	gnuplot $<
	epstopdf `basename $< plt`pdf
schema.pdf: schema.svg
	inkscape -E schema.eps schema.svg
	epstopdf schema.eps
