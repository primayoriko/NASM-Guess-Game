# NASM Guessing Number Game
A guessing number game consists of 3 levels written in NASM assembly

## Requirement
-------
1. Linux (preferred in Ubuntu derivation) x64 architecture
2. ld linker
3. NASM compiler

## How to compile, link, and open 
------------------
To run/execute the asm file (we have *game.asm* here), there are two methods.
First method,

    Run *run.sh* in the root folder of this repo

Second method (manually via terminal),

1. Open your terminal
2. Write and execute this to compile into object file
   
    nasm -f elf64 game.asm -o game.o

3. Write and execute this to link into executable (elf) file
   
    ld game.o -o game -e main

4. Write and execute to run the program
   
    ./game


# How to use
------------------ 
1. First select the difficulty adn write the difficulty number in terminal.
2. Input number (in range of 1 - 255) as many as the difficulty requested (for example, in easy you should write 3 numbers) in each turn, separated by space.
3. You will get judge based on the guess you done.
4. Repeat according to the judge until you get all numbers guessed correctly.