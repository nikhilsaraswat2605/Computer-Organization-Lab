# Assignment No. - 3
# Problem No. - 3  
# Semester - 5 (Autumn 2022-23)
# Group No. - 22
# Group Members - Nikhil Saraswat (20CS10039) & Amit Kumar (20CS3003)

# Data Segment
    .data
prompt1:                                                                                         
    .asciiz "Enter four positive integers m, n, a and r: (each integer on a new line) "     # prompt for user input    
prompt_A:                                                             
    .asciiz "Matrix A: "                                                                    # prompt for displaying matrix A                                             
prompt_B:                                                             
    .asciiz "Matrix B (Transpose of matrix A): "                                            # prompt for displaying matrix B 
error_m:                                                       
    .asciiz "m must be positive.\nEnter m again ! \t"                                       # Error message if m <= 0 
error_n:                                                       
    .asciiz "n must be positive.\nEnter n again ! \t"                                       # Error message if n <= 0
error_a:                                                       
    .asciiz "a must be positive.\nEnter a again ! \t"                                       # Error message if m <= 0 
error_r:                                                       
    .asciiz "r must be positive.\nEnter r again ! \t"                                       # Error message if n <= 0

enter_m:                                                       
    .asciiz "Enter m : \t"                                                           # enter message 
enter_n:                                                       
    .asciiz "Enter n : \t"                                                           # enter message 
enter_a:                                                       
    .asciiz "Enter a : \t"                                                           # enter message 
enter_r:                                                       
    .asciiz "Enter r : \t"                                                           # enter message 
tab:                                                         
    .asciiz "\t"                                                                            # Tab character
next_line:                                                                                  
    .asciiz "\n"                                                                            # New line character

# Code Segment

    .text

    .globl main

# Main function
# ($s0) is m
# -4($s0) is n
# -8($s0) is a
# -12($s0) is r

main:   
    jal     initStack                                                   # call initStack fuction to initialize stack to set up stack and frame pointer
    move    $s0, $sp                                                    # save stack pointer to $s0

    li      $v0, 4  
    la      $a0, prompt1   
    syscall                                                             # print prompt1
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall   
    
    
    input_m:
    li      $v0, 4                                                      # print enter_m
    la      $a0, enter_m   
    syscall  

    li      $v0, 5  
    syscall                                                             # read m from user
    move    $t0, $v0                                                    # save m to $t0
    move    $a0, $t0                                                    # $a0 = m (first argument to pushToStack function)
    ble    $v0,0, m_is_non_positive                                     # if m <= 0, it is invalid, so jump to m_is_non_positive (error message)
    jal     pushToStack                                                 # push m on the stack

    
    input_n:
    li      $v0, 4                                                      # print enter_n
    la      $a0, enter_n   
    syscall 

    li      $v0, 5  
    syscall                                                             # read n from user
    move    $t0, $v0                                                    # save n to $t0
    move    $a0, $t0                                                    # $a0 = n (first argument to pushToStack function)
    ble    $v0,0, n_is_non_positive                                     # if n <= 0, it is invalid, so jump to n_is_non_positive (error message)
    jal     pushToStack                                                 # push n on the stack

    
    input_a:
    li      $v0, 4                                                      # print enter_a
    la      $a0, enter_a    
    syscall 

    li      $v0, 5  
    syscall                                                             # read a from user
    move    $t0, $v0                                                    # save a to $t0
    move    $a0, $t0                                                    # $a0 = a (first argument to pushToStack function)
    ble    $v0,0, a_is_non_positive                                     # if n <= 0, it is invalid, so jump to n_is_non_positive (error message)
    jal     pushToStack                                                 # push a on the stack

    
    input_r:
    li      $v0, 4                                                     # print enter_r
    la      $a0, enter_r   
    syscall 

    li      $v0, 5  
    syscall                                                             # read r from user
    move    $t0, $v0                                                    # save r to $t0
    move    $a0, $t0                                                    # $a0 = r (first argument to pushToStack function)
    ble    $v0,0, r_is_non_positive                                     # if n <= 0, it is invalid, so jump to n_is_non_positive (error message)
    jal     pushToStack                                                 # push r on the stack

    # Allocate memory for matrix A of size m x n
    lw      $s1, ($s0)                                                  # $s1 = m
    lw      $s2, -4($s0)                                                # $s2 = n
    mul     $a0, $s1, $s2                                               # $a0 = m * n
    jal     mallocInStack                                               # call mallocInStack with $a0 as argument to allocate memory for matrix A
    move    $s1, $v0                                                    # $s1 = address of first element of matrix A

    # Allocate memory for matrix B of size n x m 
    lw      $s2, ($s0)                                                  # $s2 = n
    lw      $s3, -4($s0)                                                # $s3 = m
    mul     $a0, $s2, $s3                                               # $a0 = n * m
    jal     mallocInStack                                               # call mallocInStack with $a0 as argument to allocate memory for matrix B
    move    $s2, $v0                                                    # $s2 = address of first element of matrix B
    j       create_matrix_A                                             # unconditional jump to create_matrix_A

m_is_non_positive:                                                      # terminate the program if, m is non-positive
    li      $v0, 4
    la      $a0, error_m                                                
    syscall                                                             # print error_m
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line

    j       input_m                                                   # unconditional jump to input_

n_is_non_positive:
    li      $v0, 4
    la      $a0, error_n
    syscall                                                             # print error_n
    li      $v0, 4  
    la      $a0, next_line                                              
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line

    j       input_n                                                   # unconditional jump to input_

a_is_non_positive:
    li      $v0, 4
    la      $a0, error_a
    syscall                                                             # print error_a
    li      $v0, 4  
    la      $a0, next_line                                              
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line

    j       input_a                                                   # unconditional jump to input_

r_is_non_positive:
    li      $v0, 4
    la      $a0, error_r
    syscall                                                             # print error_r
    li      $v0, 4  
    la      $a0, next_line                                              
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line

    j       input_r                                                   # unconditional jump to input_


# Function to initialise frame and stack pointer
initStack:
    move    $fp, $sp                                                    # $fp = $sp
    addi    $sp, $sp, -4                                                # $sp = $sp - 4, decrement stack pointer by 4
    sw      $fp, 4($sp)                                                 # store $fp to $sp + 4
    move    $fp, $sp                                                    # $fp = $sp, # Make $fp point to current stack top before program execution
    j       return_                                                     # unconditional jump to return_

# Function to allocate memory for m * n integers on stack and return address of first element of matrix
mallocInStack:
    mul     $t0, $a0, 4                                                 # $t0 = $a0 * 4 = 4 * m * n
    move    $s5, $sp                                                    # $s5 = $sp, save stack pointer to $s5
    move    $v0, $s5                                                    # $v0 = $s5, save stack pointer to $v0 (beginning address to return it)
    sub     $sp, $sp, $t0                                               # $sp = $sp - $t0, decrement stack pointer to allocate memory for 4*m*n bytes
    j       return_                                                     # unconditional jump to return_


# Function to push an element (in $a0) to the stack
pushToStack:
    addi    $sp, $sp, -4                                                # $sp = $sp - 4, decrement stack pointer by 4
    move    $s5, $a0                                                    # $s5 = $a0, save $a0 to $s5
    sw      $s5, 4($sp)                                                 # store $s5 to $sp + 4
    j       return_                                                     # unconditional jump to return_


# Loop to populate the elements of A in a row-major fashion (i.e. A[0][0], A[0][1], ..., A[0][n-1], A[1][0], ..., A[m-1][n-1])
# Note that the elements of A are such that successive elements are placed lower in the stack (w.r.t address) 
loop__1:
    ble     $t2, $t3, print_matrix_A                                    # if $t2 <= $t3, jump to print_matrix_A, i.e. if i >= m * n, terminate loop and jump to print_matrix_A
    sw      $t4, ($t6)                                                  # store the value in $t4 to the current matrix element being pointed to by $t6
    mul     $t4, $t5, $t4                                               # $t4 = $t5 * $t4, i.e. $ t4 = $t4 * r (get next term of GP)
    addi    $t3, 1                                                      # $t3 = $t3 + 1, i.e. i++
    addi    $t6, -4                                                     # decrement $t6 by 4 to point to next matrix element               
    j       loop__1                                                     # unconditional jump to loop__1


create_matrix_A: 
    lw      $t1, -4($s0)                                                # $t1 = n
    lw      $t0, ($s0)                                                  # $t0 = m
    mul     $t2, $t0, $t1                                               # $t2 = m * n
    move    $t6, $s1                                                    # $t6 = $s1, save address of first element of matrix A to $t6
    lw      $t5, -12($s0)                                               # $t5 = r
    li      $t3, 0                                                      # $t3 = 0, i.e. i = 0
    lw      $t4, -8($s0)                                                # $t4 = a
    j       loop__1                                                     # unconditional jump to loop__1



    # Function to print the matrix A
print_matrix_A:  
    li      $v0, 4  
    la      $a0, next_line                                               
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, prompt_A  
    syscall                                                             # print prompt_A    
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    lw      $a1, -4($s0)                                                # $a1 = n
    move    $a2, $s1                                                    # $a2 = $s1, save address of first element of matrix A to $a2
    lw      $a0, ($s0)                                                  # $a0 = m
    jal     printMatrix                                                 # call printMatrix function to print matrix A with $a0, $a1, $a2 as parameters

    lw      $a1, -4($s0)                                                # $a1 = n
    lw      $a0, ($s0)                                                  # $a0 = m
    move    $a3, $s2                                                    # $a3 = $s2, save address of first element of matrix B to $a3
    move    $a2, $s1                                                    # $a2 = $s1, save address of first element of matrix A to $a2
    jal     transposeMatrix                                             # call transposeMatrix function to take transpose of matrix A and store it in matrix B with $a0, $a1, $a2 as parameters                                   
    
    li      $v0, 4  
    la      $a0, next_line                                              
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, prompt_B  
    syscall                                                             # print prompt_B
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line
    li      $v0, 4  
    la      $a0, next_line   
    syscall                                                             # print next_line

    lw      $a1, ($s0)                                                  # $a1 = m
    move    $a2, $s2                                                    # $a2 = $s2, save address of first element of matrix B to $a2
    lw      $a0, -4($s0)                                                # $a0 = n
    jal     printMatrix                                                 # call printMatrix function to print matrix B with $a0, $a1, $a2 as parameters
    
    move    $sp, $fp                                                    # before ending the program, restore the stack pointer
    j       terminate                                                   # unconditional jump to terminate



# Function to compute and store transpose of a matrix
# For this function,
# $t0 is address of current element of A
# $t1 is address of first element of B
# $t2 is m
# $t3 is n
# $t4 is i
# $t5 is j

transposeMatrix:
    move    $t4, $a0                                                   # $t4 = $a0, save m to $t4
    move    $t1, $a3                                                   # $t1 = $a3, save address of first element of matrix B to $t1
    move    $t2, $a0                                                   # $t2 = $a0, save m to $t2
    move    $t0, $a2                                                   # $t0 = $a2, save address of first element of matrix A to $t0
    move    $t3, $a1                                                   # $t3 = $a1, save n to $t3
    
    li      $t4, 0                                                     # $t4 = 0, i = 0
    addi    $t4, 1                                                     # $t4 = 1, i = 1
    sub     $t4, $t4, 1                                                  # $t4 = -1, i = -1
    j       transpose_first_loop                                       # unconditional jump to transpose_first_loop

transpose_first_loop:   
    beq     $t4, $t2, return_                                          # if $t4 == $t2, jump to return_, i.e. if i == m, terminate loop and jump to return_
    li      $t5, 0                                                     # $t5 = 0, j = 0
    addi    $t5, 1                                                     # $t5 = 1, j = 1
    sub     $t5, $t5, 1                                                # $t5 = j - 1
    j       transpose_second_loop                                      # unconditional jump to transpose_second_loop

return_transpose_second_loop:    
    addi    $t4, 1                                                     # $t4 = $t4 + 1, i++
    addi    $t4, 1                                                     # $t4 = $t4 + 1, i++
    sub     $t4, $t4, 1                                                # i = i - 1
    j       transpose_first_loop                                       # unconditional jump to transpose_first_loop

transpose_second_loop:
    beq     $t5, $t3, return_transpose_second_loop                     # if j == n, terminate from inner loop and jump to return_transpose_second_loop
    lw      $t6, ($t0)                                                 # $t6 = A[i][j]
    mul     $t7, $t2, $t5                                              # $t7 = m * j
    add     $t7, $t7, $t4                                              # $t7 = m * j + i
    mul     $t7, $t7, 4                                                # $t7 = 4 * (m * j + i)
    sub     $t7, $t1, $t7                                              # $t7 now contains the address of B[j][i]
    sw      $t6, ($t7)                                                 # B[j][i] = A[i][j]
    addi    $t0, -4;                                                   # $t0 = $t0 - 4
    addi    $t5, 1                                                     # $t5 = $t5 + 1, j++
    addi    $t5, 1                                                     # $t5 = $t5 + 1, j++
    sub     $t5,$t5, 1                                                 # j = j - 1
    j       transpose_second_loop                                      # unconditional jump to transpose_second_loop



# Function to print a m x n matrix
# For this function,
# $t0 is address of current matrix element
# $t1 is i
# $t2 is j
# $t3 is m
# $t4 is n

printMatrix:
    move    $t3, $a0                                                    # $t3 = $a0, save m to $t3
    move    $t4, $a1                                                    # $t4 = $a1, save n to $t4
    move    $t0, $a2                                                    # $t0 = $a2, save address of first element of matrix to $t0

    li      $t1, 0                                                      # $t1 = 0, i = 0
    addi    $t1, 1                                                      # $t1 = 1, i = 1
    sub    $t1, $t1, 1                                                  # $t1 = i - 1   
    j      display_first__loop                                          # unconditional jump to display_first__loop

display_first__loop:
    beq     $t1, $t3, terminate_from_print                              # if i == m, terminate from the outer loop
    li      $t2, 0                                                      # $t2 is current column number (0 to n - 1), let's call it j
    addi    $t2, 1                                                      # $t2 = j + 1
    sub     $t2, $t2, 1                                                 # $t2 = j - 1
    j      display_second__loop                                         # unconditional jump to display_second__loop

    
terminate_from_print:  
    jr      $ra                                                         # jump to return address


display_second__loop:
    beq     $t2, $t4, break_first_loop                                  # if j == n, terminate from inner loop
    li      $v0, 1                                                      
    lw      $a0, ($t0)                                                  # load the current array element into $a0
    syscall                                                             # print the current array element
    li      $v0, 4  
    la      $a0, tab 
    syscall                                                             # print a tab
    addi    $t0, -4;                                                    # $t0 = $t0 - 4
    addi    $t2, 1                                                      # $t2 = $t2 + 1, j++
    addi    $t2, 1                                                      # $t2 = $t2 + 1, j++
    sub     $t2,$t2, 1                                                  # j = j - 1

    j       display_second__loop                                        # unconditional jump to display_second__loop 
    
break_first_loop:      
    li      $v0, 4  
    la      $a0, next_line    
    syscall                                                             # print a new line
    li      $v0, 4  
    la      $a0, next_line    
    syscall                                                             # print a new line
    addi    $t1, 1                                                      # $t1 = $t1 + 1, i++
    j       display_first__loop                                         # unconditional jump to display_first__loop



return_:
    jr      $ra                                                         # jump to return address

terminate:
    li      $v0, 10                         
    syscall                                                             # print a new line
    