// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(START)
    @i
    M=0
    @24576
    D=M
    @PRESS
    D;JNE
(PRESS)
    @i
    D=M
    @8191
    D=D-A
    @START
    D;JGT
    @i
    D=M
    @SCREEN
    A=A+D
    M=-1

    @24576
    D=M
    @NPRESS
    D;JEQ
    @i
    M=M+1
    @PRESS
    0;JMP
    
(NPRESS)
    @i
    M=0
    D=M
(NPRESLOOP)
    @i
    D=M
    @8191
    D=D-A
    @START
    D;JGT
    @i
    D=M
    @SCREEN
    A=A+D
    M=0
    @24576
    D=M
    @START
    D;JNE
    @i
    M=M+1
    @NPRESLOOP
    0;JMP
    
    0;JMP
    
    

    


