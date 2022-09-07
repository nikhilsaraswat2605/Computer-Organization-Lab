###############################################################################
    # Assignment Number: 1
    # Problem Number: 2 
    # Semester Number: 5
    # Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS30003)
###############################################################################


# This program computes and displays the GCD of two numbers,
# where a and b are entered by the user.
#

    .globl  main    

    .data   

# program output text constants
prompt1:                                                
    .asciiz "Enter the first positive integer: "
prompt2:
    .asciiz "Enter the second positive integer: "
wrong_prompt:
    .asciiz "Entered number is not positive number! "
result:
    .asciiz "GCD of the two integers is: "  

newline:
    .asciiz "\n"    

    .text

# main program
#
# program variables
#   a:      $s0
#   b:      $s1
#   gcd:    $s2
#
main:
    li      $v0, 4                  # issue prompt1
    la      $a0, prompt1    
    syscall 

    li      $v0, 5                  # get 'a' from user
    syscall
    move    $s0, $v0                # save 'a' in $s0

    ble     $s0, 0, wrong_inp       # check whether the number > 0 or not, if not then show a prompt and ask user to re-enter the numbers

    li      $v0, 4                  # issue prompt2
    la      $a0, prompt2
    syscall

    li      $v0, 5                  # get 'b' from user
    syscall
    move    $s1, $v0                # save 'b' in $s1

    ble     $s0, 0, wrong_inp       # check whether the number > 0 or not, if not then show a prompt and ask user to re-enter the numbers

    bgt     $s0, 0, start           

wrong_inp:
    # print two newlines
    li      $v0, 4                  
    la      $a0, newline
    syscall
    li      $v0, 4                  
    la      $a0, newline
    syscall
    li      $v0, 4                  # issue prompt
    la      $a0, wrong_prompt
    syscall
    # print two newlines
    li      $v0, 4                  
    la      $a0, newline
    syscall
    li      $v0, 4                  
    la      $a0, newline
    syscall
    b       main                    # jump to main

start:

    li      $s2, 0                  # gcd = 0


    beq     $s0, 0, endf1           # a==0

for:
    beq     $s1, 0, endf2           # exit loop if b==0
    bgt     $s0, $s1, sub_a_b       # if a>b, then jump to sub_a_b
    sub     $s1, $s1, $s0           # else b = b-a
    b       for
    sub_a_b:
        sub     $s0, $s0, $s1       # a = a-b
        b       for


endf1:
    move      $s2, $s1              # assigning gcd=b
    b       final
endf2:
    move      $s2, $s0              # assigning gcd=a
    b       final

final:

    li      $v0, 4                  # print "GCD of the two integers is: "
    la      $a0, result             
    syscall                         

    li      $v0, 1                  # print gcd
    move    $a0, $s2
    syscall

    # print two newlines
    li      $v0, 4                  
    la      $a0, newline
    syscall
    li      $v0, 4                          
    la      $a0, newline            
    syscall

    li      $v0, 10                 # terminate the program
    syscall
