# +++++++++++++ Корень проекта +++++++++++++++++++++
TOPDIR:=$(shell /bin/pwd)/

# +++++++++++++ IP адрес сервера с МСВС ++++++++++++
MSVSServer=SAMPLE
#MSVSServer=10.4.6.76
#MSVSServer=192.168.62.3

# +++++++++++++ Путь к архиву на сервере +++++++++++
ArchPath=/arc/home/PROJECTS/SAMPLE
#ArchPath=/home/PROJECTS/OLYMP

# +++++++++++++ IP адрес сервера +++++++++++++++++++
#ServerIP=10.4.6.55
ServerIP=192.168.62.2




# Compiler
CC = gcc

# IOSYS
IO_INC = -I../../../../COMMON_MNT/MULTI/IOSYS/IO/include.$(OS)
IO_PATH =  ../../../../COMMON_MNT/MULTI/IOSYS/IO/iosys.x86.$(OS).o

# Headers SORD
SORD_PATH = ../../../../COMMON_MNT/RIO_PRJ/SORD/
SORD_INC = -I../../../../COMMON_MNT/RIO_PRJ/SORD

# OBMEN_ETH
PORT_PATH = ../../../../COMMON_MNT/RIO_PRJ/OBMEN_ETH/

# Выбранные приборы
subsystem:
	cd 06 && $(MAKE)

# Экспорт переменных
export TOPDIR IO_INC IO_PATH SORD_PATH SORD_INC OBMEN_ETH CC PORT_PATH

