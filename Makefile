##
## EPITECH PROJECT, 2024
## EtibOS
## File description:
## Makefile
##

SRC = src/main.rs

all:
	@cargo build

clean:
	@cargo clean

fclean: clean

re: fclean all

run:
	@cargo run

usb: all
	@echo "Doesn't work yet"
	@exit 1
	@cargo bootimage
	@read -p "Which device you want to use ? " dev; \
	@sudo dd if=target/x86_64-etib_os/debug/bootimage-etib_os.bin of=$$dev bs=4M status=progress && sync

release:
	@cargo build --release