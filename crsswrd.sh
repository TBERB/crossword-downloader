#!/bin/bash

mkdir ~/Documents/crosswords
mkdir ~/Documents/crosswords/$(date +%m)-$(date +%d)

wget -P ~/Documents/crosswords/$(date +%m)-$(date +%d) https://www.onlinecrosswords.net/printable-daily-crosswords-{1,2,3,4,5,6,7}.pdf

cd ~/Documents/crosswords/$(date +%m)-$(date +%d)

mv printable-daily-crosswords-1.pdf puzz#1_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-2.pdf puzz#2_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-3.pdf puzz#3_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-4.pdf puzz#4_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-5.pdf puzz#5_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-6.pdf puzz#6_$(date +%m)-$(date +%d).pdf
mv printable-daily-crosswords-7.pdf puzz#7_$(date +%m)-$(date +%d).pdf
pdfunite puzz#* puzz_pack-$(date +%m)-$(date +%d).pdf
