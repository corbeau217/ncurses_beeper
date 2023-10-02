PLATFORM           ?= PLATFORM_DESKTOP

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
	ifeq ($(OS),Windows_NT)
			PLATFORM_OS=WINDOWS
	else
		UNAMEOS=$(shell uname)
		ifeq ($(UNAMEOS),Linux)
			PLATFORM_OS=LINUX
		endif
	endif
endif

CC = gcc

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
    ifeq ($(PLATFORM_OS),OSX)
        # OSX default compiler
        CC = clang
    endif
endif


# Define default make program: Mingw32-make
MAKE = mingw32-make

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
    ifeq ($(PLATFORM_OS),LINUX)
        MAKE = make
    endif
    ifeq ($(PLATFORM_OS),OSX)
        MAKE = make
    endif
endif

# CFLAGS += -Wall -std=c11 -lncurses -Wno-missing-braces
CFLAGS += -Wall -std=c11 -lncurses -Wno-missing-braces

