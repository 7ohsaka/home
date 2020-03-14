CC=gcc
CFLAGS=-O3 -Wall -fPIC

SRCDIR= ./src/
OBJDIR= ./obj/
BINDIR= ./bin/
INCDIR= ./include/

# Linux
# LIB=libcurvefit.so 
LIB=libcurvefit.dll

SRCS=$(SRCDIR)curvefit.c  

# non-path filename
filename=$(notdir $(SRCS))

# the obj target of a source code using the pattern rule
OBJS=$(patsubst %.c,$(OBJDIR)%.o,$(filename))

all:$(LIB)
    
$(LIB): $(OBJS)  
	$(CC) -shared -o $(BINDIR)$@ $(OBJS) -L./bin/ -leqlin

# the pattern rule: one step rule for multiple source files
$(OBJS):$(SRCS)
	$(CC) $(CFLAGS) -o $(OBJDIR)$(notdir $@) -c $(patsubst  %.o,$(SRCDIR)%.c,$(notdir $@))  -I$(INCDIR) 