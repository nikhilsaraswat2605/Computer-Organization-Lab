###############################################################################
    # Assignment Number: 1
    # Problem Number: 3 
    # Semester Number: 5
    # Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS30003)
###############################################################################


# This program checks and displays whether a number is prime or composite,
# where n is entered by the user.
#

    .globl  main

    .data

# program output text constants
prompt:
    .asciiz "Enter a positive integer greater than equals to 10: "
wrong_prompt:
    .asciiz "Entered number is < 10 "
result1:
    .asciiz "Entered number is a PRIME "
result2:
    .asciiz "Entered number is a COMPOSITE "

newline:
    .asciiz "\n"

    .text

# main program
#
# program variables
#   n:      $s0
#   i:      $s1

main:
    li      $v0, 4              # issue prompt
    la      $a0, prompt
    syscall

    li      $v0, 5              # get n from user
    syscall
    move    $s0, $v0            # save n in $s0

    blt     $s0, 10, wrong_inp  # if n < 10, then give a prompt of wrong input and ask user to re-enter the number
    bge     $s0, 10, start      # else proceed further

wrong_inp:
    # print two newlines
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4              # issue wrong_prompt
    la      $a0, wrong_prompt
    syscall
    # print two newlines
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4          
    la      $a0, newline
    syscall
    b       main                 # jump to main

start:

    li      $s1, 2              # i = $s1 = 2
for:
    mult    $s1, $s1            # i*i
    mfhi    $s2            
    mflo    $s3
    bgt     $s2, 0, isPrime     # if i*i > 32 bit integer > n, then n should be prime
    blt     $s0, $s3, isPrime   # exit loop if n < i*i
    div     $s0, $s1            # divide n by i
    mfhi    $s3                 # remainder = $s3
    beq     $s3, 0, isComposite # if remainder == 0, then n must be composite
    addi     $s1, 1             # i++
    b       for                 # continue loop

isPrime:
    li      $v0, 4              # print "The sum of the first "
    la      $a0, result1
    syscall
    b       isEnd                 

isComposite:
    li      $v0, 4              # print "The sum of the first "
    la      $a0, result2
    syscall
    b       isEnd


isEnd:
    # print two newlines
    li      $v0, 4              
    la      $a0, newline
    syscall
    li      $v0, 4              
    la      $a0, newline
    syscall
    li      $v0, 10             # terminate the program
    syscall