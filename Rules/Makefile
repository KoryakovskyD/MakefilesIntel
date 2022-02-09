
ifeq ($(SUB_DIRS),)
    CFLAGS =  -ggdb -c -Wall $(IO_INC) -I$(PORT_PATH) \
			 -I$(SORD_PATH) -I$(INCLUDE)


    .PHONY: all clean

    all:	$(NAME)

    clean:
		rm -rf *.o

    $(NAME): $(OBJS)
		$(CC) $(OBJS) $(IO_PATH) -o $(NAME) \
        -lm -lc -lpthread -lrt

    *.o: *.c
		$(CC) $(CFLAGS) *.c -o *.o
else
    subsystem:
	cd $(SUB_DIRS) && $(MAKE)
endif
