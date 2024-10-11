sub asy {return system("asy -o '$_[0]' '$_[0]'");}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");
push @generated_exts, "pre", "%R-[0-9]*.pdf", "%R-[0-9]*.prc", "%R-[0-9]*.tex", "%R-[0-9]*.out", "%R-[0-9]*.pbsdat", "%R.pbsdat", "%R-[0-9]*.eps", "%R-*.asy";

$pdf_mode = 4;

$do_cd = 1;

$dvi_mode = 0;
$postscript_mode = 0;

$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';

