// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// i = 0
// sum = 0
// while i < R0 {
//  sum += R1
//  i++
// }
    @i
    M=0
    @sum
    M=0
(LOOP)
    @i
    D=M
    @0
    D=D-M
    @END
    D;JGE
    @1
    D=M
    @sum
    M=M+D
    @i
    M=M+1
    @LOOP
    0;JMP
(END)
    @sum
    D=M
    @2
    M=D
    @END
    0;JMP