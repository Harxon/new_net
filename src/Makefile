OBJS += main.o 
OBJS += net_proj.o
OBJS += pthread_recv_from_uart.o 
OBJS += pthread_fetch_from_list.o
OBJS += list.o
OBJS += shm.o
OBJS += sem.o



#自动化变量'$<'表示搜索到的第一个依赖文件，'$@'为目标文件
../$(BIN_DIR)$(OBJS):%.c
	$(CC) $< -o $@ $(AFLAGS)
