# Assignment No. - 3
# Problem No. - 1 
# Semester - 5 
# Group No. - 22
# Group Members - Amit Kumar (20CS30003) & Nikhil Saraswat (20CS10039)


    .data
prompt1:                                                                # Prompt for first printf statement 
    .asciiz "Enter first number: "            
prompt2:                                                                # Prompt for 2nd printf statement
    .asciiz "Enter second number: "
overflow_error:                                                         # for printing Overflow error message
    .asciiz "Number should fit in a 16-bit signed integer.\n"
result:                                                                 # for last printf statement
    .asciiz "Product of the two numbers is: "
next_line:                                                              #for next line in printf statement
    .asciiz "\n"

    .text                                                                # Start of code
    .globl main                                                             

                # $t1 stores largest 16-bit signed number
                # $t0 stores smallest 16-bit signed number
                # $s1 stores b
                # $s0 stores a
main:
    li      $t0, 32767                              # largest 16-bit signed number
    li      $t1, -32768                             # smallest 16-bit signed number

    input_:
    # printing 1st printf statement
    la      $a0, prompt1                            # load address of prompt1
    li      $v0, 4                                  # load v0 with 4
    syscall                                         # call system call

  
    # taking input from user
    li      $v0, 5                                  # load v0 with 5
    syscall                                         # call system call


    move    $s0, $v0                                # storing input in $s0 ('a')
    bgt     $s0, $t0, overflow                      # if $s0('a') > $t0(32767) then goto overflow
    bgt     $t1, $s0, overflow                      # if $t1(-32768) > $s0('a') then goto overflow

    # printing 2nd printf statement
    la      $a0, prompt2                            # load address of prompt2
    li      $v0, 4                                  # load v0 with 4
    syscall                                         # call system call
    
    # taking input from user
    li      $v0, 5                                  # load v0 with 5
    syscall                                         # call system call
    move    $s1, $v0                                # storing input in $s1 ('b')
    bgt     $s1, $t0, overflow                      # if $s1('b') > $t0(32767) then goto overflow
    bgt     $t1, $s1, overflow                      # if $t1(-32768) > $s1('b') then goto overflow

    # a==-32768 || b==-32768
    beq     $s0 , $t1 , extreme_case                # if $t1(-32768) == $s0('a') then goto extreme_case
    beq     $s1 , $t1 , extreme_case                # if $t1(-32768) == $s1('b') then goto extreme_case
    # performing multiplication by booth_multiply algorithm
    move    $a0, $s0                                # storing $s0('a') in $a0 , argument 1
    move    $a1, $s1                                # storing $s1('b') in $a1 , argument 2
    jal     booth_multiplication_algorithm          # call booth_multiplication_algorithm

print_output_of_a_b:
    move    $s0, $v0                                # $s0 now stores multiplication result as $v0 stores the return value of the function call
    
    la      $a0, result                             # load address of result in $a0
    li      $v0, 4                                  # load v0 with 4 to print result
    syscall                                         # call system call 

    move    $a0, $s0                                # storing $s0 in $a0 to print multiplication result
    li      $v0, 1                                  # load v0 with 1 to print multiplication result
    syscall                                         # call system call

    la      $a0, next_line                          # load address of next_line in $a0
    li      $v0, 4                                  # Loads v0 with 4 to print next line
    syscall                                         # call system call                   

    la      $a0, next_line                          # load address of next_line in $a0
    li      $v0, 4                                  # Loads v0 with 4 to print next line
    syscall                                         # Calls system call

    j       terminate                               # jump to terminate



booth_multiplication_algorithm:

    # if a==0||b==0 return 0
    move    $s0 , $a0                               # $s0 now stores $a0 , argument 1(a)
    move    $s1 , $a1                               # $s1 now stores $a1 , argument 2(b)
    li    $s3 , 0
    
                                                     # if $s0(a) == 0 then 
    beq     $s0, 0, return_booth_multiplication_algorithm         # jump to return_booth_multiplication_algorithm 
                                                     # if $s1(b) == 0 then 
    beq     $s1, 0, return_booth_multiplication_algorithm         # jump to return_booth_multiplication_algorithm 


    # $t2 stores Q0Q-1
    # $t1 stores n (Q is an n-bit number)
    # $t0 stores -M
    # let $s1 be M (let b be M)
    # let $s0 be Q (let a be Q)
    not     $t0, $s1                                # $t0 now stores ~M
    addi    $t0, $t0, 1                             # $t0 now stores -M

    li      $t1, 1                                  # $t1 now stores 1 , n = 1
    move    $t2, $s0                                # $t2 now stores Q
    bgt     $t2, 0, for1                            # if $t2(Q) > 0 then jump to for1
    not     $t2, $t2                                # $t2 now stores ~Q
    addi    $t2, $t2, 1                             # $t2 now stores -Q

for1:
    beq     $t2, 0, break_for1                      # if $t2(Q) == 0 then jump to break_for1
    addi    $t1, $t1, 1                             # $t1 now stores n+1
    sra     $t2, $t2, 1                             # $t2 now stores Q/2
    j       for1                                    # jump to for1

break_for1: 
    move    $s3, $s0                                # $s3 now stores Q
    li      $t2, 0                                  # $t2 now stores 0
    li      $t3, 0                                  # $t3 now stores 0
    move    $t4, $t1                                # $t4 now stores n
    sll     $t0, $t0, $t1                           # $t0 now stores -M << n
    sll     $s1, $s1, $t1                           # $s1 now stores M << n
    j       for2                                    # jump to for2




for2:
    beq     $t4, 0, break_for2                      # if $t4(n) == 0 then jump to break_for2
    sll     $t3, $t3, 1                                    
    addi    $t3, $t3, 1                             # $t3 <-- ($t3 *2) + 1
    sub     $t4, $t4, 1                             # $t4 <-- $t4 - 1
    j       for2                                    # t3 stores 00000...111(stores 1 in the lower n bits and 0 in the rest)

break_for2:
    and     $s3, $s3, $t3                           # s3 stores result, now stores 0000...Q(Q in the lower n bits and 0 in the remaining bits)
   # li      $t1 , 32                                
    j       for3                                    # jump to for3

for3:
    beq     $t1, 0, return_booth_multiplication_algorithm         # if n==0 , jump to return_booth_multiplication_algorithm
    sub    $t1, $t1, 1                              # $t1 <-- $t1 - 1 , where $t1 stores n
    li      $t3, 0                                  # $t3 now stores 0
    addi    $t3, $t3, 1                             # $t3 now stores 1
    and     $t3, $t3, $s3                           # if LSB of $s3 is 0, $t3 = 0, else $t3 = 1
    sll     $t3, $t3, 1                             # $t3 <-- ($t3*2)
    srl     $t2, $t2, 1                             # right shift Q0Q-1 by 1-bit, Q0Q-1 = Q0Q-1/2
    or      $t2, $t2, $t3                           # $t2 stores Q0Q-1
    j       check__00                               # jump to check__00   


check__11:
    j       right_shift                             # jump to right_shift(11 Case)

check__01:
    beq     $t2, $t3, ADD_M_TO_A                    # if Q0Q-1 == 1 then jump to ADD_M_TO_A
    addi    $t3, $t3, 1                             # $t3 <-- $t3 + 1
    j       check__10                               # jump to check__10

check__00:
    move    $t3, $zero                              # $t3 = 0 
    beq     $t2, $t3, right_shift                   # if Q0Q-1 == 0 then jump to right_shift
    addi    $t3, $t3, 1                             # $t3 <-- $t3 + 1
    j       check__01                               # jump to check__01

check__10:
    beq     $t2, $t3, SUBTRACT_M_FROM_A             # if $t2 == 2, jump to SUBTRACT_M_FROM_A(10 Case)
    addi    $t3, $t3, 1                             # $t3 <-- $t3 + 1
    j      check__11                                # jump to check__11


ADD_M_TO_A:
    add     $s3, $s3, $s1                           # $s3 <-- $s3 + $s1   , where $s1 stores M
    j       right_shift                             # jump to right_shift

SUBTRACT_M_FROM_A:
    add     $s3, $s3, $t0                           # $s3 <-- $s3 + $t0   , where $t0 stores -M
    j       right_shift                             # jump to right_shift

right_shift:
    sra     $s3, $s3, 1                             # right shift $s3 by 1-bit, $s3 = $s3/2
    j       for3                                    # jump to for3

return_booth_multiplication_algorithm:
    move    $v0, $s3                                # $v0 now stores result
    jr      $ra                                     # jump to return_multiply_booth
    

overflow:
    # overflow printing
    la      $a0, overflow_error                     # $a0 now stores address of overflow_error
    li      $v0, 4                                  # $v0 now stores 4
    syscall                                         # system call to print overflow_error
    j      input_

extreme_case:
    mul     $s0, $s1, $s0                           # direct multiply using mul for extreme case when (a==-32768||b==-32768)  
    
    la      $a0, result                             # load address of result in $a0
    li      $v0, 4                                  # load v0 with 4 to print result
    syscall                                         # call system call 

    move    $a0, $s0                                # storing $s0 in $a0 to print multiplication result
    li      $v0, 1                                  # load v0 with 1 to print multiplication result
    syscall                                         # call system call

    la      $a0, next_line                          # load address of next_line in $a0
    li      $v0, 4                                  # Loads v0 with 4 to print next line
    syscall                                         # call system call                   

    la      $a0, next_line                          # load address of next_line in $a0
    li      $v0, 4                                  # Loads v0 with 4 to print next line
    syscall                                         # Calls system call

    j       terminate                               # jump to terminate



terminate:
    li      $v0, 10                                 # $v0 now stores 10
    syscall                                         # terminate