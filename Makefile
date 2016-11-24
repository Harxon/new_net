#CC := gcc
CC := arm-none-linux-gnueabi-gcc
DIRS_NAME := src
BIN_DIR := bin no

AFLAGS := -Wall -c -g -I ./include/
LDFLAGS := -lpthread
#应用程序1的名字
APPNAME := storage_mamage


#指定要生成的两个应用程序目标
#'\c'可以实现echo的不换行,'@'加在命令前，在执行命令时，不显示被执行的命令本身
ALLAPPS:$(APPNAME) 
	@echo "appname>>  \c"
	@ls $(APPNAME) 


$(APPNAME):./$(BIN_DIR)/*.o
	$(CC) $^ -o $@ $(LDFLAGS)

./$(BIN_DIR)
	make -C $(DIRS_NAME)

.PHONY:clean
clean:
	rm -rf ./$(BIN_DIR)/*.o
