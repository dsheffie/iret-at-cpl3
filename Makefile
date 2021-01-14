OBJ = main.o iret.o
CC = gcc
EXE = iret

.PHONY : all clean

all : $(EXE)

$(EXE) : $(OBJ)
	$(CC) $(OBJ) -o $(EXE)

%.o : %.c
	$(CC) -c $<

%.o : %.S
	$(CC) -c $<

clean:
	rm -r $(EXE) $(OBJ)
