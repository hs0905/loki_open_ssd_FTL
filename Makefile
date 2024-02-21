CTOOLS=/home/mingeon/GEMMINI/chipyard/esp-tools-install/bin/riscv64-unknown-elf-
CC=$(CTOOLS)gcc
OC=$(CTOOLS)objcopy
CFLAGS=-O2 -nostdlib -march=rv64imac -mabi=lp64 # maybe O2

NAME=ftl_ariane
TARGET=$(NAME).dump

C_SRCS= \
	main.c \
	address_translation.c \
	request_allocation.c \
	ariane.c \
	data_buffer.c \
	request_schedule.c \
	nsc_driver.c \
	ftl_config.c \
	request_transform.c \
	garbage_collection.c \
	nvme_io_cmd.c \
	host_lld.c \
	nvme_admin_cmd.c \
	nvme_identify.c \
	nvme_main.c \
	ariane.c \



OBJS_DIR := OBJS
OBJS=$(patsubst %.c,$(OBJS_DIR)/%.o,$(C_SRCS))
DEPS=$(patsubst %.c,$(OBJS_DIR)/%.d,$(C_SRCS))

all: $(TARGET)

-include $(DEPS)

$(OBJS_DIR)/%.o:%.c
	mkdir -p $(OBJS_DIR)
	$(CC) $(CFLAGS) $< -c -MMD -MP -o $@

$(NAME).elf:  start.s end.s $(OBJS)
	$(CC) $(CFLAGS)  -T memmap $^ -o $@
#if error above, change position end.s $^ 
$(TARGET): $(NAME).elf
	$(OC) -O binary -S $<  $@

.PHONY=clean

clean:
	rm -f $(OBJS) $(TARGET) $(DEPS)
