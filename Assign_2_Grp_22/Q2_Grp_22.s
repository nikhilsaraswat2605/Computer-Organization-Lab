# Assignment No. - 3
# Problem No. - 2 
# Semester - 5 (Autumn 2022-23)
# Group No. - 22
# Group Members - Nikhil Saraswat (20CS10039) & Amit Kumar (20CS3003)

    .globl  main

    .data

myarray:                                                        # array of 10 integers                                      
    .space 40    
prompt1:                                                        
    .asciiz "\nEnter the 10 Elements: "                           # prompt for first print statement (enter 10 integers)

prompt2:                                                        
    .asciiz "\n\nEnter the the value of k: "                      # prompt for second print statement (enter k)           

prompt3:
    .asciiz "\nNumbers in sorted order are as following:-\n "   # prompt for third print statement (sorted order)

prompt4:    
    .asciiz "\nkth number: \n "                                 # prompt for fourth print statement (kth number)

error_prompt1:
    .asciiz "\nk is greater than the 10...\n"                    # error prompt for first print statement (k is greater than n)
error_prompt2:
    .asciiz "\nk is less than the 1...\n"                       # error prompt for second print statement (k is less than 1)

newline:
    .asciiz "\n"                                                # newline character

whitespace:
    .asciiz " "                                                 # whitespace character

    .text 

main:  
    # print the prompt1
    li      $v0, 4  
    la      $a0, prompt1                                        # load address of prompt1 into $a0
    syscall

    # print a newlines
    li      $v0, 4              
    la      $a0, newline                                        # load address of newline into $a0
    syscall

    # loop to take array input
    li      $t0, 0                                              # initialize $t0 to 0 (i = 0)
    j       take_input                                          # jump to take_input

begin_sorting:

    la      $a0, myarray                                        # load address of myarray into $a0 (first argument to sort_array function)
    jal     sort_array                                          # call sort_array

    input_:
    # print the prompt2
    li      $v0, 4
    la      $a0, prompt2                                        # load address of prompt2 into $a0
    syscall
    # take k as input
    li      $v0, 5                                              # load $v0 with 5 (read system call)
    syscall
    move    $s0, $v0                                            # move $v0 to $s0 (k)

    bgt     $s0, 10, error_1                                    # check if k is greater than n, if yes, print error message
    ble     $s0, 0, error_2                                     # if k is less than n, begin_sorting to sort array

    move    $a0, $s0                                            # move k to $a0 (first argument to sort_array function)
    la      $a1, myarray                                        # load address of myarray into $a1 (second argument to sort_array function)
    jal     find_k_largest                                      # call find_k_largest function
    # return
    j       terminate                                           # unconditional jump to terminate

take_input:        
    beq     $t0, 40, begin_sorting                              # if i is equal to n, jump to begin_sorting
    # take arr[i] input
    li      $v0, 5
    syscall    
    sw      $v0, myarray($t0)                                   # store $v0 to myarray[i] (myarray[i] = $v0)
    add     $t0, $t0, 4                                         # i++
    j       take_input                                          # unconditional jump to take_input


inner_loop:
    bge     $t1, $s1, break_inner_loop                          # if j >= n-i-1, return
    add     $s2, $s0, $t1                                       # s2 = s0 + j, s2 = myarray[j]
    lw      $s2, 0($s2)                                         # load myarray[j] to s2
    move    $t2, $t1                                            # t2 = j
    add     $t2, $t2, 4                                         # t2 = t2 + 4, (t2 = j + 1)
    add     $s3, $s0, $t2                                       # s3 = s0 + t2, s3 = myarray[j+1]
    lw      $s3, 0($s3)                                         # load myarray[j+1] to s3
    bgt     $s2, $s3, jmp_swap1                                 # if myarray[j] > myarray[j+1], swap myarray[j] and myarray[j+1]
    add     $t1, $t1, 4                                         # j++
    j       inner_loop                                          # unconditional jump to inner_loop

jmp_swap1:
    move    $t3, $s0                                            # t3 = s0 (i.e. s3 stores stating address of myarray
    move    $t4, $s0                                            # t4 = s0 (i.e. s4 stores stating address of myarray
    add     $t3, $t3, $t1                                       # t3 = t3 + j, t3 = myarray + j
    add     $t4, $t4, $t2                                       # t4 = t4 + (j + 1), t4 = myarray + (j + 1)
    move    $a0, $t3                                            # load t3 to $a0 (first argument to swap function)
    move    $a1, $t4                                            # load t4 to $a1 (second argument to swap function)
    sub     $sp, $sp, 4                                         # decrement stack pointer by 4 (i.e. #Save space in the stack for saving $ra)
    sw      $ra, 0($sp)                                         # store return address to stack
    jal     swap                                                # call swap function (swap myarray[j] and myarray[j+1])
    lw      $ra, 0($sp)                                         # load $ra from stack
    add     $t1, $t1, 4                                         # j++  
    j       inner_loop                                          # unconditional jump to inner_loop

swap:
    lw      $t3, 0($a0)                                         # load myarray[j+1] to s4
    lw      $t4, 0($a1)                                         # load myarray[j] to s5
    sw      $t4, 0($a0)                                         # store s5 to myarray[j+1]
    sw      $t3, 0($a1)                                         # store s4 to myarray[j]
    jr      $ra

outer_loop:        
    
    bge     $t0, 40, break_outer_loop                           # if i is greater than equal to n, jump to break_outer_loop
    li      $s1, 40                                             # s1 = n = 40
    sub     $s1, $s1, $t0                                       # s1 = s1 - i, s1 = n - i
    sub     $s1, $s1, 4                                         # s1 = s1 - 4, s1 = n - i - 1
    li      $t1, 0                                              # j = 0
    j       inner_loop                                          # unconditional jump to inner_loop
    break_inner_loop:                                                      
    add     $t0, $t0, 4                                         # i++
    j       outer_loop                                          # unconditional jump to outer_loop

print_array:
    beq     $t0, 40, back_again                                 # if i is greater than equal to n, jump to back_again
    # print arr[i]
    add     $s2, $s0, $t0                                       # s2 = s0 + i, s2 = myarray + i
    lw      $s2, 0($s2)                                         # load myarray[i] to s2
    li      $v0, 1                                              # load $v0 with 1 (print system call)
    move    $a0, $s2                                            # move s2 to $a0 (first argument to print_array function)
    syscall                                                     # system call to print integer

    # print a whitespace
    li      $v0, 4                                              # load $v0 with 4 (print system call)
    la      $a0, whitespace                                     # load address of whitespace into $a0
    syscall                                                     # system call to print whitespace

    add     $t0, $t0, 4                                         # i++
    j       print_array                                         # unconditional jump to print_array

sort_array:
    
    li      $t0, 0                                              # t0 = 0 (i = 0)
    move    $s0, $a0                                            # s0 = a0, s0 = myarray
    j       outer_loop                                          # unconditional jump to outer_loop
    break_outer_loop:

    li      $v0, 4                                              # load $v0 with 4 (print system call)
    la      $a0, prompt3                                        # load address of prompt3 into $a0
    syscall

    li      $t0, 0                                              # t0 = 0 (i = 0)
    j       print_array                                         # unconditional jump to print_array
    back_again:
    jr      $ra                                                 # return 

find_k_largest:
    
    move    $s1, $a0                                            # s1 = a0, s1 = k
    move    $s2, $a1                                            # s2 = a1, s2 = myarray
    sub     $s1, $s1, 1                                         # s1 = s1 - 1, s1 = k - 1
    mul     $s1, $s1, 4                                         # s1 = s1 * 4, s1 = (k - 1) * 4
    # lw      $s2, myarray($s1) # $s2 = arr[k-1]
    add     $s2, $s2, $s1                                       # s2 = s2 + s1, s2 = myarray + (k - 1) * 4
    lw      $s2, 0($s2)                                         # load myarray[k-1] to s2
    # print a newlines
    li      $v0, 4                                              # load $v0 with 4 (print system call)
    la      $a0, newline                                        # load address of newline into $a0
    syscall
    # print a newlines
    li      $v0, 4                                              # load $v0 with 4 (print system call)    
    la      $a0, prompt4                                        # load address of prompt4 into $a0
    syscall
    # print the k largest element
    li      $v0, 1                                              # load $v0 with 1 (print system call)
    move    $a0, $s2                                            # move s2 to $a0 (first argument to print_array function)
    syscall
    j       return                                              # unconditional jump to return


error_1:
    li      $v0, 4                                              # load $v0 with 4 (print system call)
    la      $a0, error_prompt1                                  # load address of error_prompt1 into $a0
    syscall
    j       input_                                              # unconditional jump to input_
    
error_2:
    li      $v0, 4                                              # load $v0 with 4 (print system call)
    la      $a0, error_prompt2                                  # load address of error_prompt2 into $a0
    syscall
    j       input_                                              # unconditional jump to input_
    
return:
    jr      $ra                                                 # return from function

terminate:
    li      $v0, 10                                             # load $v0 with 10 (exit system call) or terminate program
    syscall