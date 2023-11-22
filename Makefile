all:
	hfst-lexc --Werror apertium-sei.sei.lexc -o sei.lexc.hfst
	hfst-twolc apertium-sei.sei.twol -o sei.twol.hfst
	hfst-compose-intersect -1 sei.lexc.hfst -2 sei.twol.hfst -o sei.gen.hfst
	hfst-invert sei.gen.hfst -o sei.mor.hfst
	hfst-fst2fst -O sei.mor.hfst -o sei.mor.hfstol

clean:
	rm *.hfst *.hfstol *.png
