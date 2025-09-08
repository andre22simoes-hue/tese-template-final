# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file 
# ---------------------------------------------------------

# Main filename
FILE=Thesis
TEX_DIR=main

# ---------------------------------------------------------

all:
	cd $(TEX_DIR) && pdflatex $(FILE)
	makeindex $(TEX_DIR)/$(FILE).nlo -s nomencl.ist -o $(TEX_DIR)/$(FILE).nls
	makeindex $(TEX_DIR)/$(FILE).glo -s $(TEX_DIR)/$(FILE).ist -o $(TEX_DIR)/$(FILE).gls -t $(TEX_DIR)/$(FILE).glg
	cd $(TEX_DIR) && bibtex $(FILE)
	cd $(TEX_DIR) && pdflatex $(FILE)
	cd $(TEX_DIR) && pdflatex $(FILE)

clean:
	(rm -rf $(TEX_DIR)/*.aux $(TEX_DIR)/*.bbl $(TEX_DIR)/*.blg $(TEX_DIR)/*.glg $(TEX_DIR)/*.glo $(TEX_DIR)/*.gls $(TEX_DIR)/*.ilg $(TEX_DIR)/*.ist $(TEX_DIR)/*.lof $(TEX_DIR)/*.log $(TEX_DIR)/*.lot $(TEX_DIR)/*.nlo $(TEX_DIR)/*.nls $(TEX_DIR)/*.out $(TEX_DIR)/*.toc)

veryclean:
	make clean
	rm -f *~ *.*%
	rm -f $(TEX_DIR)/$(FILE).pdf $(TEX_DIR)/$(FILE).ps