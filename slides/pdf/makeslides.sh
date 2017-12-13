#!/bin/bash
jupyter notebook --notebook-dir='..' --no-browser &
sleep 3
jnserver=$(jupyter notebook list | grep "http://localhost" | head -1 | cut -d' ' -f1)
for (( i=1; i<=6; i++))
	do
		addr=${jnserver:0:22}notebooks/week$i.ipynb${jnserver:22}
		`npm bin`/decktape -s 1680x1050 rise $addr week$i.pdf
		pdfnup --nup 2x2 --suffix '2x2' --batch week$i.pdf
	done
kill $!
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -r150 -sOutputFile=ComputationalFinance.pdf week?-2x2.pdf
rm week?-2x2.pdf
