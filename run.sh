# nasm -f elf64 game.asm -o game.o && ld -o game.o -e main game
nasm -f elf64 game.asm -o game.o
ld game.o -o game -e main
./game
# gcc game.o -o game
