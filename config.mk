# paths
PREFIX = /usr

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I. -I${X11INC}
LIBS = -lc -lcrypt -L${X11LIB} -lX11 -lXext -lXrandr

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -DHAVE_SHADOW_H
CFLAGS = -std=c99 -pedantic -Wall -Ofast ${INCS} ${CPPFLAGS}
LDFLAGS = ${LIBS}
COMPATSRC = explicit_bzero.c
