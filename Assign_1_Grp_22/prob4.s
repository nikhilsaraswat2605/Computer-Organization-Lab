###############################################################################
    # Assignment Number: 1
    # Problem Number: 4 
    # Semester Number: 5
    # Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS30003)
###############################################################################


# This program checks and displays whether a number is perfect or not,
# where n is entered by the user.
#

    .globl  main

    .data

# program output text constants
prompt:
    .asciiz "Enter a positive integer : "
wrong_prompt:
    .asciiz "Entered number is not positive! "
result1:
    .asciiz "Entered number is a perfect number. "
result2:
    .asciiz "Entered number is NOT a perfect number. "

newline:
    .asciiz "\n"

    .text

# main program
#
# program variables
#   n:      $s0
#   sum:    $s1
#   i:      $s2
#
main:
    li      $v0, 4              # issue prompt
    la      $a0, prompt
    syscall

    li      $v0, 5              # get n from user
    syscall
    move    $s0, $v0

    ble     $s0, 0, wrong_inp   # if n <= 0, then give a prompt of wrong input and ask user to re-enter the number
    bgt     $s0, 0, start       # else proceed further

wrong_inp:
    # print two newlines
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4              # issue prompt
    la      $a0, wrong_prompt
    syscall
    # print two newlines
    li      $v0, 4          
    la      $a0, newline
    syscall
    li      $v0, 4          
    la      $a0, newline
    syscall
    b       main

start:

    li      $s1, 1              # sum = 1
    li      $s2, 2              # i = 2
for:
    mult    $s2, $s2            # i*i
    mfhi    $s3            
    mflo    $s4
    bgt     $s3, 0, endf        # if i*i > 32 Integer > n
    bgt     $s4, $s0, endf      # if i*i > n
    div     $s0, $s2            # divide n by i
    mfhi    $s3                 # n%i
    mflo    $s4                 # n/i
    beq     $s3, 0, addNum      # if n%i == 0, then i is divisor of n
    add     $s2, $s2, 1         # i++
    b       for                 # continue loop


addNum:
    add     $s1, $s1, $s2           # sum += i
    bne     $s2, $s4, addQuotient   # if i != n/i, then i and n/i both will be the divisors of n, so add both of them in sum
    addi    $s2, 1                  # i++
    b       for                     # continue loop

addQuotient:
    add     $s1, $s1, $s4           # sum+= n/i
    addi    $s2, 1                  # i++
    b       for                     # continue loop

endf:
    beq     $s1, $s0, isPerfect     # if sum == n
    bne     $s1, $s0, notPerfect    # else sum != n

isPerfect:
    li      $v0, 4                  # print "Entered number is a perfect number. "
    la      $a0, result1
    syscall
    b       isEnd

notPerfect:
    li      $v0, 4                  # print "Entered number is NOT a perfect number. "
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
    li      $v0, 10                 # terminate the program
    syscall