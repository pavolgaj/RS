ifeq ($(OS),Windows_NT) 
	detected_OS := Windows
else
	detected_OS := $(shell sh -c 'uname 2>/dev/null || echo Unknown')
endif

$(info $(detected_OS))
$(shell rm -f demod_mod.o bch_ecc_mod.o)

	
CC = gcc
COPTS = -O3
	
ifeq ($(detected_OS),Windows)
	COPTS += -DCYGWIN
endif
	
.PHONY: all
all: rs41mod rs92mod lms6Xmod meisei100mod dfm09mod m10mod mXXmod imet54mod mp3h1mod mts01mod

rs41mod: rs41mod.c demod_mod.o bch_ecc_mod.o
	$(CC) $(COPTS) -o rs41mod rs41mod.c demod_mod.o bch_ecc_mod.o -lm

dfm09mod: dfm09mod.c demod_mod.o
	$(CC) $(COPTS) -o dfm09mod dfm09mod.c demod_mod.o -lm

m10mod: m10mod.c demod_mod.o
	$(CC) $(COPTS) -o m10mod m10mod.c demod_mod.o -lm

mXXmod: mXXmod.c demod_mod.o
	$(CC) $(COPTS) -o mXXmod mXXmod.c demod_mod.o -lm
    
imet54mod: imet54mod.c demod_mod.o
	$(CC) $(COPTS) -o imet54mod imet54mod.c demod_mod.o -lm

lms6Xmod: lms6Xmod.c demod_mod.o bch_ecc_mod.o
	$(CC) $(COPTS) -o lms6Xmod lms6Xmod.c demod_mod.o bch_ecc_mod.o -lm

meisei100mod: meisei100mod.c demod_mod.o bch_ecc_mod.o
	$(CC) $(COPTS) -o meisei100mod meisei100mod.c demod_mod.o bch_ecc_mod.o -lm

rs92mod: rs92mod.c demod_mod.o bch_ecc_mod.o nav_gps_vel.c
	$(CC) $(COPTS) -o rs92mod rs92mod.c demod_mod.o bch_ecc_mod.o -lm

mp3h1mod: mp3h1mod.c demod_mod.o
	$(CC) $(COPTS) -o mp3h1mod mp3h1mod.c demod_mod.o -lm
	
mts01mod: mts01mod.c demod_mod.o
	$(CC) $(COPTS) -o mts01mod mts01mod.c demod_mod.o -lm
	
demod_mod.o: demod_mod.c demod_mod.h
	$(CC) -Ofast -c demod_mod.c

bch_ecc_mod.o: bch_ecc_mod.c bch_ecc_mod.h
	$(CC) $(COPTS) -c bch_ecc_mod.c
    
xdata: xdata.c
	$(CC) $(COPTS) -o xdata xdata.c -lm
	
	
.PHONY: clean
clean:
	rm -f rs41mod rs92mod lms6Xmod meisei100mod dfm09mod m10mod mXXmod imet54mod mp3h1mod mts01mod xdata
	#rm -f demod_mod.o
	#rm -f bch_ecc_mod.o

