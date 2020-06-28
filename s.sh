# nasm -felf32 game.asm && ld -melf_i386 -o game game.o -e main
# gcc  -fno-pie -fno-asynchronous-unwind-tables -O2 -s -c -o game.o game.c
gcc  -fno-asynchronous-unwind-tables -O2 -s -c -o game.o game.c
./objconv -fnasm game.o