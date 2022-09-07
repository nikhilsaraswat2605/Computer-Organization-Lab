###############################################################################
    # Assignment Number:  Mips assignment 3 
    # Problem Number: 2
    # Semester Number: 5
    # Group Number: 22
    # Group Members: Amit Kumar(20CS30003), Nikhil Saraswat (20CS10039)
###############################################################################

.globl  main
.data

array: 
    # global array of 10 elements 
    .space 40

    
comma:
    .asciiz ","     # comma for output of sorted array
newline:
    .asciiz "\n"    # newline
delimeter:
    .asciiz " : "   # delimeter for input of each element
white_space:
    .asciiz " "     # white_space for output of sorted array
prompt3:
    .asciiz "Sorted array (non-decreasing order): " # prompt for output of sorted array
prompt2:
    .asciiz "Please enter element : " # prompt for input of each element
prompt1:
    .asciiz "Please enter 10 array elements each in one line : " #prompt for input

.text

# main function 
# length of array is 10 which is stored in $a0

main:   
    # print prompt1
    addi    $v0, $zero, 4    
    la      $a0, prompt1
    syscall
    # print newline
    addi    $v0, $zero, 4
    la      $a0, newline
    syscall


    # initialise array length of 10
    addi      $s0, $zero, 5 
    addi      $s0, $s0, 5 

    # initialize i = 0
    addi      $t0, $zero, 0  
    # initialize j = 0 (for printing array)
    addi      $t1, $zero, 1
    # call Stack_init function to initialise stack
    jal     Stack_init
    # unconditional jump to read_loop to read array elements
    j		   read_loop
    

# Stack_init function to initialise stack

Stack_init:
    #decresing $a0 and stack pointer by 4
    addi    $a0, $a0, -4    
    # create space for frame pointer in stack
    addi    $fp, $fp, -4
    # make space for storing frame pointer
    addi    $fp, $fp, 4
    # make space for storing frame pointer
    addi    $sp, $sp, -4  
    # store old frame pointer in stack  
    sw      $fp, 0($sp)   
    # adjust the space allocated for frame pointer
    addi    $a0, $a0, 4    
    # assign stack pointer to frame pointer
    add     $fp, $sp, $zero 
    # return to main function
    jr		$ra
    

# push function
# function variables
# n: $a0

pushToStack:
    #decresing $a0 and stack pointer by 4
    addi    $a0, $a0, -4    
    addi    $sp, $sp, -4  
    addi    $a0, $a0, 4    
    # make space for storing frame pointer
    # save the element of 1st parameter to stack
    sw      $a0, 0($sp)  
    # return to main function   
    jr      $ra

read_loop:
    # print prompt2
    addi      $v0,$zero, 1      
    addi      $v0,$v0, 1      
    addi      $v0,$v0, 1      
    addi      $v0,$v0, 1
    # print prompt2 -> "Please enter element : "
    la        $a0, prompt2 
    syscall


    # print index of array element
    addi      $v0,$zero, 0      
    addi      $v0,$v0, 1      
    add       $a0, $t1, $zero
    syscall

    # print delimeter -> " : "
    addi      $v0,$zero, 4      
    la        $a0, delimeter
    syscall

    # print white_space -> " "
    addi    $v0,$zero, 4
    la      $a0, white_space
    syscall
    
    # read array element from user
    addi    $v0,$zero, 5   
    syscall   

    # store array element in array[i] = $v0
    sw      $v0, array($t0)     

    # i+=1
    addi    $t0, $t0, 4         
    addi    $t1, $t1, 1

    # terminate loop if i == 10 (array length)
    bne     $t0, 40, read_loop  

    # load array address in $a0 that is passed to sort_recursively function
    la      $a0, array  
    # load start index in $a1
    addi    $a1, $zero, 0      
    # load end index in $a2
    addi    $a2, $zero, 9      

    # call recursive sort with parameters array, 0, 9
    jal     sort_recursively  


    # load array address in $a0 = array
    la     $a0, array  
    # store array_length in $a1 = 10
    add    $a1, $s0, $zero    

    # print newline
    addi    $v0, $zero, 4
    la      $a0, newline
    syscall

    # print prompt3 -> "Sorted array (non-decreasing order): "
    addi    $v0,$zero, 4  
    la      $a0, prompt3
    # sysyen call for printing string
    syscall
    # load array address in $a0 = array
    la     $a0, array  
    # print white_space -> " "
    addi    $v0, $zero, 4  
    la      $a0, white_space
    # sysyen call for printing string
    syscall
    # print white_space -> " "
    addi    $v0,$zero, 4  
    la      $a0, white_space
    # sysyen call for printing string
    syscall

    # load array address in $a0 = array
    la     $a0, array  
    # store array_length in $a1 = 10
    add    $a1, $s0, $zero    
    # print array
    jal     print_array 

    # frame pointer restoring
    lw      $fp, 0($sp) 
    # stack pointer restoring
    addi    $sp, $sp, 4 

    addi    $v0, $zero, 10  

    syscall
    # unconditional jump to terminate program
    j		terminate				# jump to terminate
    

#   $t0: i
#   $a1: N 
#   $t2: 4*i (offset)
#   $a0: array base address
# print array function
# function variables

print_array: 
    # assign i = 0
    addi      $t0,$zero, 0   
    # assign offset = 0   
    addi      $t2,$zero, 0   
    # $s0 = base address of array 
    add       $s0, $a0 ,$zero  
    # if base address of array is not equal to zero then execute branch to print_array_loop
    beq       $a0, $s0, print_for_loop 

print_for_loop:
    # if i>=n then terminate print loop
    bge     $t0, $a1, terminate_print_function  
    # assign $t1 = 4*i + array base address
    add     $t1, $s0, $t2       
    # $t1 = array[i]
    lw      $t1, 0($t1)  
    # if i == n then terminate print loop      
    beq     $t0, $a1, terminate_print_function
    # assign offset = offset + 4 
    add     $t1, $s0, $t2  
    # $t1 = array[i]
    lw      $t1, 0($t1) 
    # $t2 = $t2 + 4    
    addi    $t2, $t2, 4         
    # print array[i] 
    addi    $v0,$zero, 1  
    # $a0 = array[i]   
    add     $a0, $t1 ,$zero   
    # sysyen call for printing integer
    syscall    
    # $v0 = 4
    addi    $v0,$zero, 4 
    # i+=1
    addi    $t0, $t0, 1 
    # if i>=n then terminate print loop
    bge     $t0, $a1, terminate_print_function 
    # unconditional jump to print_for_loop
    j       print_comma

print_comma:
    # print comma
    la      $a0, comma   
    # sysyen call for printing string    
    syscall    
    # $v0 = 4  
    addi    $v0,$zero, 4      #
    # print white_space
    la      $a0, white_space
    # sysyen call for printing string                     
    syscall      

    # print space character
    addi      $v0, $zero, 4    
    # load sapace character in $a0 
    la      $a0, white_space   
    # sysyen call for printing character  
    syscall
    # unconditional branch to print_for_loop
    j       print_for_loop

terminate_print_function:
    # print newline
    addi      $v0, $zero, 4   
    # load newline in $a0   
    la        $a0, newline 
    # sysyen call for printing string
    syscall
    # return to main function
    jr        $ra         



# function variables
# array base address: $a0
# i: $a1
# j: $a2
# SWAP function (for convenience we have implemented it such that
# given the array base address and indices i and j it will SWAP
# arr[i] and arr[j] wherever they are stored)

SWAP:
    # assign $t0 = 4*i
    sll     $t0, $a1, 2    
    # assign $t0 = arr + 4*i 
    add     $t0, $a0, $t0
    # $t2 = arr[4*i]
    lw      $t2, 0($t0)     
    # assign $t1 = 4*j
    sll     $t1, $a2, 2   
    # assign $t1 = base address of arr + 4*j  
    add     $t1, $a0, $t1   
    # $t3 = arr[j] (load the value at arr + 4*j into $t3)
    lw      $t3, 0($t1)     
    # arr[j] = $t2 (load the value in $t2 at  arr + 4*j, arr[j] now has old value of arr[i]
    sw      $t2, 0($t1)  
    # load the value in $t3 at  arr + 4*i, arr[i] now has old value of arr[j]   
    sw      $t3, 0($t0)    
    # return 
    jr		$ra			    


push_data_in_stack:
    # temporarily store $ra
    add    $t0, $ra ,$zero 
    # initialising sp and fp  
    jal     Stack_init  
    # temporarily store array address 
    add    $t1, $a0 ,$zero   
    # push $ra to stack (fp-4) 
    add    $a0, $t0 ,$zero   
    jal     pushToStack
    # push $s0 to stack (fp-8)
    add    $a0, $s0 ,$zero   
    add    $a0, $s0 ,$zero   
    jal     pushToStack
    # push $s1 to stack (fp-12)
    add    $a0, $s1 ,$zero  
    jal     pushToStack
    # push $s2 to stack (fp-16)
    add    $a0, $s2 ,$zero   
    add    $a0, $s2 ,$zero   
    jal     pushToStack
    # push address of array (fp-20)
    add    $a0, $t1 ,$zero   
    jal     pushToStack 
    # push start index left (fp-24)
    add    $a0, $a1 ,$zero   
    jal     pushToStack
    # push end index right (fp-28)
    add    $a0, $a2 ,$zero   
    add    $a0, $a2 ,$zero   
    jal     pushToStack
    j       proceed2


# l: $s0
# r: $s1
# p: $s2
# start index left: $a1
# end index right: $a2
# recursive sort function
# function variables
# array arr start address: $a0



sort_recursively:
    j      push_data_in_stack

    proceed2:
    # array address restoring
    add    $a0, $t1 ,$zero   
    # l = left
    add    $s0, $a1 ,$zero  
    # r = right 
    add    $s1, $a2 ,$zero  
    # p = left 
    add    $s2, $a1 ,$zero 
    # stack pointer decrementing
    sub    $sp, $sp , 4   
    # store old ra
    sw     $ra, 0($sp)  
    # check    
    jal    check
    # $ra restoring
    lw     $ra, 0($sp)  
    # stack pointer incrementing 
    add    $sp, $sp , 4   

outer_while_loop_of_recursive_sort:
    # if l < r then continue else return
    bge     $s0, $s1, return_from_resursive_sort     
    j       inner_while_loop_recursive_sort_left

    
check:
    # load arr[p] in $t4
    lw      $t4, 0($a0)
    # load arr[r] in $t5  
    lw      $t5, 0($a0)   
    # compare arr[p] and arr[r]  
    slt     $t4, $t4, $t5   
    # if arr[p] <= arr[r] then SWAP
    beq     $t4, $zero, proceed1   
    proceed1:
    # return 
    jr       $ra


inner_swap_resursive_sort:
    # $a0 already has base address of array arr
    # SWAP arr[l] and arr[r]
    # $a1 = $s0 (move l to $a1)
    add     $a1, $s0 ,$zero     
    # $a2 = $s1 (move r to $a2)
    add     $a2, $s1 ,$zero   
    # with parameters arr, l, r call SWAP function
    jal     SWAP
    # $a1 restoring
    lw      $a1, -24($fp) 
    # $a2 restoring
    lw      $a2, -28($fp)   
    # stack pointer decrementing
    sub     $sp, $sp , 4  
    # store $ra 
    sw      $ra, 0($sp)  
    sub     $sp, $sp , 4   
    # check
    jal     check   
    # restore $ra
    lw      $ra, 0($sp) 
    # stack pointer incrementing 
    addi    $sp, $sp, 4 
    addi    $sp, $sp, 4  
    # unconditional branch to outer_while_loop_of_recursive_sort
    j       outer_while_loop_of_recursive_sort

inner_while_loop_recursive_sort_left:
    # assign $t0 = 4*l
    sll     $t0, $s0, 2     
    # assign $t0 = base address of arr + 4*l
    add     $t0, $a0, $t0   
    # load the value at arr + 4*l into $t0 = arr[l]
    lw      $t0, 0($t0)     
    # assign $t1 = 4*p
    sll     $t1, $s2, 2    
    # assign $t1 = base address of arr + 4*p 
    add     $t1, $a0, $t1   
    # load the value at arr + 4*p into $t1 = arr[p]
    lw      $t1, 0($t1)     

    # stack pointer decrementing
    sub     $sp, $sp , 4   
    # store $ra
    sw      $ra, 0($sp)     
    jal     check
    # restore $ra
    lw      $ra, 0($sp)  

    # stack pointer incrementing  
    addi     $sp, $sp , 4   
    # if arr[l] > arr[p] then move to next loop
    bgt     $t0, $t1, inner_while_loop_recursive_sort_right  
    # if l >= right then move to next loop    
    bge     $s0, $a2, inner_while_loop_recursive_sort_right 
    # l+=1     
    addi    $s0, $s0, 1                                 
    # uncondition branch to inner_while_loop_recursive_sort_left
    j       inner_while_loop_recursive_sort_left 


inner_while_loop_recursive_sort_right:
    # assign $t0 = 4*r
    sll     $t0, $s1, 2    
    # assign $t0 = base address of arr + 4*r 
    add     $t0, $a0, $t0  
    # load the value at arr + 4*r into $t0 = arr[r] 
    lw      $t0, 0($t0)     
    # assign $t1 = 4*p
    sll     $t1, $s2, 2  
    # assign $t1 = base address of arr + 4*p   
    add     $t1, $a0, $t1   
    
    # decrement stack pointer by 4
    sub    $sp, $sp , 4   
    # store $ra
    sw     $ra, 0($sp) 
    # call check function    
    jal    check
    # restore $ra
    lw     $ra, 0($sp)  
    # stack pointer incrementing 
    add    $sp, $sp , 4 

    j      proceed4


                

inner_if_condition_recursive_sort:
    # if l < r then move to SWAP else call check function
    blt     $s0, $s1, inner_swap_resursive_sort     
    jal     check
    # move p to $a1
    # $a0 already has base address of array arr
    # SWAP arr[p] and arr[r]
    add     $a1, $s2 ,$zero   
    # move r to $a2 ( $a2 = $s1 )   
    add     $a2, $s1 ,$zero   
    # calling SWAP with parameters arr, p, r    
    jal     SWAP            

    # calling to recursive sort(arr, left, r-1)
    # assign $a0 already has base address of array arr
    # load left into $a1 ( $a1 = $fp - 24 )
    lw      $a1, -24($fp)   
    # assign $a2 to r-1
    addi    $a2, $s1, -1    
    # calling recursvive sort with parameters arr, left, r-1
    jal     sort_recursively  
    j       proceed5

         

retain_data:
    # restore $ra
    sub     $sp, $sp, 4

    lw      $ra, -4($fp)   
    # restore $s0 
    lw      $s0, -8($fp)   
    # restore $s1 
    lw      $s1, -12($fp)   
    # restore $s2
    lw      $s2, -16($fp) 
    j       proceed3 

return_from_resursive_sort:
    # unconditional jump to retain_data
    j       retain_data
    # pop from stack 
    proceed3:
    addi    $sp, $sp, 32    
    # restore frame pointer
    lw      $fp, 0($sp)  
    # restore stack pointer   
    addi    $sp, $sp, 4     
    # return
    jr      $ra             


proceed4:

    # load the value at arr + 4*p into $t1 = arr[p]
    lw      $t1, 0($t1)   
    # assign $t0 = 4*r
    sll     $t0, $s1, 2    
    # assign $t0 = base address of arr + 4*r 
    add     $t0, $a0, $t0  
    # load the value at arr + 4*r into $t0 = arr[r] 
    lw      $t0, 0($t0)  
    # if arr[r] < arr[p] then move to if condition else move to else condition
    blt     $t0, $t1, inner_if_condition_recursive_sort  
    # if r <= left then move to if condition else move to else condition
    ble     $s1, $a1, inner_if_condition_recursive_sort 
    # r-=1  
    addi    $s1, $s1, -1                            
    # unconditional branch to inner_while_loop_recursive_sort_right
    j       inner_while_loop_recursive_sort_right  

proceed5:
    # stack pointer decrementing
    sub     $sp, $sp , 4   
    # store $ra
    sw      $ra, 0($sp)  
    # call check function   
    jal     check
    # restore $ra
    lw      $ra, 0($sp)    
    # stack pointer incrementing
    add     $sp, $sp , 4   
    # calling to recursive sort(arr, r+1, right) 
    # assign $a0 already has base address of array arr
    # assign $a1 to r+1
    addi    $a1, $s1, 1     
    # load right into $a2 ( $a2 = $fp - 28 )
    lw      $a2, -28($fp)   
    # call recursvive sort with parameters arr, r+1, right
    jal     sort_recursively  
    # unconditional branch to outer_while_loop_of_recursive_sort
    j       return_from_resursive_sort

terminate:
# terminate program
    addi      $a0, $a0, 1
    addi      $v0, $zero, 10
    # system call to terminate program     
    syscall


