# smallpt Makefile
#
# 


# Select appropriate compiler.
#CPP=g++
CPP=g++-4.2
CPPFLAGS=-O3 -fopenmp       # Use this for gcc >= 4.2
#CPPFLAGS=-O3               # Use this for gcc <  4.2

ifdef DEBUG
CPPFLAGS=-g
endif

default: all

all: smallpt smallpt4k

smallpt: smallpt.cpp Makefile
	$(CPP) $(CPPFLAGS) -o smallpt smallpt.cpp 

clean:
	-rm smallpt smallpt4k

tkdiff:
	for i in `svn st -q | cut -c 8-`; do tkdiff $$i; done

# Requires sstrip utility, which is part of ELFkickers:
# http://www.muppetlabs.com/~breadbox/software/elfkickers.html
# Also requires, 7z, part of p7zip:
# http://p7zip.sourceforge.net/
# The compile options were found with GC masher:
# http://ftp.kameli.net/pub/fit/misc/gcmasher11082005.tar.gz
# Guides I followed:
# http://in4k.untergrund.net/index.php?title=Linux
# http://ftp.kameli.net/pub/fit/misc/presis_asm06.pdf
# http://www.muppetlabs.com/~breadbox/software/tiny/teensy.html
#
# compiles to 4049 bytes on 32-bit kubuntu fiesty
# compiles to 4054 bytes on 64-bit kubuntu hardy (to a 32 bit binary)
smallpt4k: smallpt4k.cpp Makefile
	$(CPP) -m32 -march=native -O1 -nostdlib -fpeephole2 -ftree-vectorize -fopenmp -ffast-math -fomit-frame-pointer -fno-exceptions -c smallpt4k.cpp
	ld -dynamic-linker /lib/ld-linux.so.2 smallpt4k.o /usr/local/lib/libgomp.so /lib/libm.so.6 -o usmallpt4k            # 32-bit OS
#	ld -dynamic-linker /lib32/ld-linux.so.2 smallpt4k.o /usr/lib32/libgomp.so /lib32/libm.so.6 -o usmallpt4k -melf_i386 # 64-bit OS
	strip -R .note -R .comment -R .eh_frame -R .eh_frame_hdr -R .gnu.version usmallpt4k
	./sstrip usmallpt4k         # 32-bit OS
#	./sstrip32 usmallpt4k       # 64-bit OS
	echo 'HOME=/tmp/S;cp $$0 ~;tail -n+2 $$0|zcat>~;~;rm ~;exit' > smallpt4k
	7z a -tgzip -mx=9 -so dummy usmallpt4k >> smallpt4k
	#gzip -n --best -c usmallpt4k >> smallpt4k
	chmod +x smallpt4k
	ls -l smallpt4k

# This builds a self assembling (SA) binary.
# File size is 2666 bytes (2.7KB) on 32-bit Ubuntu gutsy with g++ 4.2.
smallptSA: smallpt.cpp Makefile
	echo 'a=/tmp/I;tail -n+2 $$0|zcat>$$a.cpp;g++-4.2 -O3 -fopenmp -o $$a $$a.cpp;$$a $$*;rm $$a $$a.cpp;exit' > smallptSA
	7z a -tgzip -mx=9 -so dummy smallpt.cpp >> smallptSA
	chmod +x smallptSA
	ls -l smallptSA

DISTNAME = smallpt
DISTFILES = README LICENSE.txt smallpt.cpp smallpt4k.cpp Makefile result_25k.png

SRCS = $(CFILES) $(C++FILES) $(C++FILES:%.cxx=%.h)

SCENES=sky nightsky island vista overlap wada wada2 forest
SAMPLES=8 40 200 1000 5k 25k
IMAGES=$(SCENES:%=%.png) $(SCENES:%=%_t.jpg) $(SAMPLES:%=result_%.png) $(SAMPLES:%=result_t_%.jpg) $(SAMPLES:%=result_crop_%.jpg)

WEBFILES = $(DISTFILES) smallpt.txt smallpt4k.txt index.php cpp2html.css cpp2html_9.css result640.jpg smallpt.tar.gz top.html bot.html smallpt.html extraScenes.txt $(IMAGES)

results: smallpt smallpt4k
	-mv result{,4k}_5k.ppm /tmp
	-(time ./smallpt 5000 && mv image.ppm result_5k.ppm) 2>&1 |tee result.txt
	-(time ./smallpt4k && mv image.ppm result4k_5k.ppm) 2>&1 |tee result4k.txt
	-compare -metric AE result5k.ppm result_5k.png /tmp/garbage.ppm
	-compare -metric AE result4k_5k.ppm result_5k.png /tmp/garbage.ppm

results2: smallpt smallpt4k
	for i in $(SAMPLES); do \
	  (time ./smallpt $i && mv image.ppm image_$i.ppm) 2>&1 |tee result_$i.txt; \
	  compare -metric AE image_$i.ppm result_$i.png /tmp/diff_$i.png; \
        done

dist: $(DISTFILES)
	-rm -rf $(DISTNAME)
	mkdir $(DISTNAME)
	ln $(DISTFILES) $(DISTNAME)
	tar cvzf $(DISTNAME).tar.gz $(DISTNAME)
	chmod 644 $(DISTNAME).tar.gz
	-rm -rf $(DISTNAME)

thumbs:
	for i in $(SCENES); do \
convert "$${i}.ppm" "$${i}.png"; \
convert -quality 92 -resize 150x150 "$${i}.ppm" "$${i}_t.jpg"; \
done

errthumbs:
	-for i in 8 40 200 1000 5k 25k; do \
convert "image_$${i}.ppm" -quality 92 "result_$${i}.png"; \
convert "image_$${i}.ppm" -resize 100x100 -quality 92 "result_t_$${i}.jpg"; \
convert "image_$${i}.ppm" -crop 100x100+205+530 -quality 92 "result_crop_$${i}.jpg"; \
        done
	-convert -resize 640x640 -quality 92 result_25k.png result640.jpg

upload: $(WEBFILES)
	perl -pe 's/\n/ \n/g' smallpt.cpp >/tmp/tmp.smallpt.cpp
	source-highlight -f html -c cpp2html.css --no-doc -n -i /tmp/tmp.smallpt.cpp -o /tmp/tmp.smallpt.html
	./source-highlight-finish.pl < /tmp/tmp.smallpt.html > smallpt.html
	convert -geometry 640x640 -quality 92 result_25k.png result640.jpg
	rsync -e ssh -avz $(WEBFILES) kbeason@kevinbeason.com:kevinbeason.com/smallpt/

others:
	$(CPP) $(CPPFLAGS)

