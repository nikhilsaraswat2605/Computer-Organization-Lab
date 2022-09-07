# ###################################
    # Assignment Number:  Mips assignment 3 
    # Problem Number: 3
    # Semester Number: 5
    # Group Number: 22
    # Group Members: Amit Kumar(20CS30003), Nikhil Saraswat (20CS10039)
# ###################################

.globl  main
.data

array: 
    .space 40    #10 elements
array_prompt:
    .asciiz "Enter array elements: "

found_prompt:
    .asciiz " FOUND in the array at index "

find_prompt:
    .asciiz "Enter number to find: "

sort_prompt:
    .asciiz "Sorted array: "

index_:
    .asciiz " (0-based index) "

not_found_prompt:
    .asciiz " NOT FOUND in the array\n"

colon_:
    .asciiz ":"

space_:
    .asciiz " "
tab:
    .asciiz "\t"
next_line:
    .asciiz "\n"

.text

# main program stuffs
# $s1 : n number which needs to be find
# $s0 : length of the array

main:
    jal     stack_init
    # set array length to 10

    addi    $t0,$zero, 10 
    add    $s0,$zero, $t0 


    j       takeinp

scanning:
    # print statement
    addi    $v0,$zero, 0      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, array_prompt
    syscall

    # print statement
    addi    $v0,$zero, 0      
    addi    $v0,$v0, 1      
    add    $a0,$zero,$zero
    add     $a0,$zero, $t1
    syscall

    
    # print " "
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, space_
    syscall
    
    # print colon_
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, colon_
    syscall
    
    # print " "
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, space_
    syscall
    
    # input element of the array
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1
    addi    $v0,$v0,1      
    syscall   

    # storing array element in the corresponding array position 
    sw      $v0, array($t0)     

    # incrementing the array position
    addi    $t0, $t0, 4         
    addi    $t1, $t1, 1
    
    # condition check to stop taking input
    bne     $t0, 40, scanning  

    j      find_

find_:
    # print find_prompt
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, find_prompt
    syscall

    # input the number n which needs to be find
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1
    addi    $v0,$v0,1      
    syscall

    # $s1 : n   
    add     $s1,$zero, $v0    

    # $t0 : address of the array
    la      $a0, array

    # $t1 : start index of the array
    add    $a1,$zero, $zero

    # $t2 : end index of the array
    add     $a2, $s0, $zero    
    addi    $a2, $a2, -1    

    j       recursive_sort_

recursive_sort_:
    # calling recursive sort function
    jal     recursive_sort  

    # print sort_prompt
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1  
    la      $a0, sort_prompt
    syscall

    # loading address of array into $a0
    la      $a0, array  
    
    # $a1 : length of the array
    add     $a1,$zero, $s0    
    
    # calling FUNCTION_TO_PRINT_ARRAY function
    jal     FUNCTION_TO_PRINT_ARRAY 


    # $t0 : address of the array
    la      $a0, array      

    # $t1 : start index of the array
    add    $a1,$zero, $zero          
    
    # $t2 : end index of the array
    add     $a2, $s0, $zero    
    addi    $a2, $a2, -1    

    # $a3 : n : key 
    add     $a3,$zero, $zero        
    add     $a3,$zero, $s1        

    # calling recursive_binary_search function
    jal     recursive_search    

    # $s2 : return value
    add     $s2,$zero, $zero
    add     $s2,$zero, $v0

    # if $s2 == -1
    # then not found
    beq     $s2, -1, label_incase_not_found    
    bne     $s2, -1, proceed8_prints

terminate:
    # frame restore
    lw      $fp, 0($sp) 

    # restore stack
    addi    $sp, $sp, 1 
    addi    $sp, $sp, 1 
    addi    $sp, $sp, 1 
    addi    $sp, $sp, 1 

    # kill program
    addi    $v0,$zero, 10     
    syscall



# stack_init function
# program variables
stack_init:
    # init stack
    # addi $t0 $sp 4
    
    # allocate space for frame pointer
    addi    $sp, $sp, -4    
    addi    $sp, $sp,  4    
    addi    $sp, $sp, -4    

    # storing old frame pointer in to the stack # $sp = $fp
    sw      $fp, 0($sp)     

    # update frame pointer to the new base of stack # $fp = $sp
    add     $fp, $sp, $zero

    # return address        
    jr		$ra

 
# push function stuffs
# n: $a0

Stack_Push:
    
    # make space for storing the new element
    addi    $sp, $sp, -4    
    
    # save the new element to stack
    sw      $a0, 0($sp)     
    
    jr      $ra




takeinp:
    # input array
    # set i=0
    add    $t0,$zero, $zero  
    # set $t1=1
    addi    $t1,$zero, 0  
    addi    $t1,$t1, 1  
    j      scanning
    

# recursive search function stuffs
# $a3 : find key
# $a2 : index representing end
# $a1 : index representing start
# $a0 : start address of the array

recursive_search:
    
    # saving registers $ra which is used later in recursive call
    add     $t0,$zero, $zero    
    add     $t0,$zero, $ra    
    
    jal     stack_init   
    
    # saving registers $a0 which is used later in recursive call
    add     $t1,$zero, $zero    
    add     $t1,$zero, $a0    
    
    add    $a0,$zero,$zero
    
    # pushing old $ra to stack (fp-4)
    add     $a0,$zero, $zero    
    add     $a0,$zero, $t0    
    jal     Stack_Push

    add    $a0,$zero,$zero
    
    # restoring a0
    add     $a0,$zero, $t1    
    
    # setting default value of return as -1
    add    $v0,$zero, $zero     
    addi    $v0,$zero, -1     

    # if end  index is smaller then start index then jump to return_from_recursive_search_label
    bgt     $a1,$a2, return_from_recursive_search_label   
    ble     $a1,$a2, proceed5   



display_function_END:
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    
    # print next_line
    addi    $v0,$v0, 1      
    la      $a0, next_line
    syscall

    
    # return
    jr      $ra         


key_lt_recursive_search_mid2_label:
    
    # if key is greater than or equals to A[mid2] then jump to key_gt_recursive_search_mid2_label
    bge     $a3, $t3, key_gt_recursive_search_mid2_label  
    blt     $a3, $t3, proceed3
    

key_gt_recursive_search_mid2_label:

    # if key is less than or equals to A[mid2] then jump to recursive_search_key_lt_mid2
    ble     $a3, $t4, incase_recursive_search         
    bgt     $a3, $t4, proceed4
    

incase_recursive_search:
    
    # array base address : $a0 , $a1 is mid1 + 1
    add    $a1, $t1, $zero                             
    addi    $a1, $a1, 1                             
    
    # $a2 is mid2 - 1
    add    $a2, $t2, $zero                            
    addi    $a2, $a2, -1 

    # $a3 : key , call recursive search 
    jal     recursive_search                        


outer_while_loop_recursive_sort:
    # if left greater than or equals to right then jump to outer_while_loop_recursive_sort
    bge     $s0, $s1, return_recursive_sort    
    blt     $s0, $s1, inner_while_loop_l__recursive_sort

inner_while_loop_l__recursive_sort:

    # assign 4*l to  $t0
    sll     $t0, $s0, 2     
    # assign A + 4*l to  $t0
    add     $t0, $a0, $t0   
    # assign A[l] to  $t0
    lw      $t0, 0($t0)     

    # assign 4*p to  $t1
    sll     $t1, $s2, 2     

    # assign A + 4*p to  $t1
    add     $t1, $a0, $t1   

    # assign A[p] to  $t1
    lw      $t1, 0($t1)     

    # if A[l] is greater than or equals to A[p] then jump to inner_while_loop_l__recursive_sort
    bgt     $t0, $t1, inner_while_loop_r__recursive_sort      
    
    #  move to next loop ,if l is greater than or equals to right
    bge     $s0, $a2, inner_while_loop_r__recursive_sort      
    
    # l+=1
    addi    $s0, $s0, 1                                 
    
    # jump to inner_while_loop_l__recursive_sort
    j       inner_while_loop_l__recursive_sort                

inner_while_loop_r__recursive_sort:

    # assign 4*r to $t0
    sll     $t0, $s1, 2     

    # assign A + 4*r to $t0
    add     $t0, $a0, $t0   

    # assign A[r] to $t0
    lw      $t0, 0($t0)     

    # assign 4*p to $t1
    sll     $t1, $s2, 2     

    # assign A + 4*p to $t1
    add     $t1, $a0, $t1   

    #  assign A[p] to $t1
    lw      $t1, 0($t1)     

    # if A[r] < A[p] then move to next loop
    bgt     $t1,$t0, if_inner_recursive_sort 

    #  if r <= left then move to if condition
    ble     $s1, $a1, if_inner_recursive_sort       
    
    # r-=1
    addi    $s1, $s1, -1                            
    
    # unconditional jump to inner_while_loop_r__recursive_sort
    j       inner_while_loop_r__recursive_sort            

if_inner_recursive_sort:
    # if left < right then move to swap_inner_recursive_sort     
    bgt     $s1,$s0, swap_inner_recursive_sort     
    ble     $s1,$s0, proceed6

return_recursive_sort:
    
    # restore $s2
    lw      $s2, -16($fp)   
    
    # restore $s1
    lw      $s1, -12($fp)   
    
    # restore $s0
    lw      $s0, -8($fp)    
    
    # restore $ra
    lw      $ra, -4($fp)    
    
    # restore 
    addi    $sp, $sp, 7
    addi    $sp, $sp, 7
    addi    $sp, $sp, 7
    addi    $sp, $sp, 7

    # restore
    lw      $fp, 0($sp)     
    
    # restore
    addi    $sp, $sp, 1     
    addi    $sp, $sp, 1     
    addi    $sp, $sp, 1     
    addi    $sp, $sp, 1     

    # return
    jr      $ra             


# swap function 
# $a0 --> array base address
# $a1 --> i
# $a2 --> j
swap:
    
    # put  4*i in $t0 
    sll     $t0, $a1, 2     
    
    # put  A + 4*i in $t0 
    add     $t0, $zero, $t0   
    add     $t0, $a0, $t0   
    
    # put  A[i] in load the value at A + 4*i into $t2 
    lw      $t2, 0($t0)     

    # put  4*j in $t1 
    sll     $t1, $a2, 2     
    
    # put  A + 4*j in $t1 
    add     $t1, $zero, $t1   
    add     $t1, $a0, $t1   
    
    # put  A[j] in load the value at A + 4*j into $t3 
    lw      $t3, 0($t1)     

    
    # restore
    sw      $t2, 0($t1)     
    
    # restore
    sw      $t3, 0($t0)     
    
    # return
    jr		$ra			    

# print array function stuffs
#  4*i (offset)             ---> $t2
#  i                        ---> $t0
#  N                        ---> $a1
#  array base address       ---> $a0

FUNCTION_TO_PRINT_ARRAY: 
    
    # put  0 in  i 
    addi    $t0,$zero, 0      
    
    # put  0 in  offset 
    addi    $t2,$zero, 0      
    
    # array base address 
    add     $t3,$zero, $a0    

    j       display_FOR_LOOP

display_FOR_LOOP:
    
    # condition check to break loop
    bge     $t0, $a1, display_function_END  
    blt     $t0, $a1, proceed7


label_incase_not_found:
    # print n
    add    $v0,$zero, $zero      
    addi   $v0,  $v0, 1
    add    $a0,$zero,$zero
    add     $a0,$zero, $s1
    syscall

    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      

    # print not_found_prompt
    addi    $v0,$v0, 1      
    la      $a0, not_found_prompt
    syscall

    # branch to terminate
    j       terminate    

key_eq_recursive_search_mid1_label:
    
    # if key is equal to A[mid1] then jump to key_eq_recursive_search_mid1_label
    bne     $a3, $t3, key_eq_recursive_search_mid2_label  
    beq     $a3, $t3, proceed2
    


key_eq_recursive_search_mid2_label:
    
    # if key is equal to A[mid2] then jump to key_eq_recursive_search_mid2_label
    bne     $a3, $t4, key_lt_recursive_search_mid2_label  
    beq     $a3, $t4, proceed1
    


return_from_recursive_search_label:

    # restoring $ra
    lw      $ra, -4($fp)    

    # Restoring stack
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1

    # restoring frame pointer
    lw      $fp, 0($sp)     
    
    # restoring stack pointer
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1
    addi    $sp, $sp, 1

    # return
    jr      $ra             


# recursive sort function stuffs
# $s2 : p
# $s1 : r
# $s0 : l
# $a2 : end 
# $a1 : start 
# $a0 : start address of array A 


recursive_sort:
    # saving $ra
    add     $t0,$zero, $ra    

    jal     stack_init   

    # storing aray base address in $t1
    add     $t1,$zero, $a0    
    
    add    $a0,$zero,$zero

    # push old $ra to stack (fp-4)
    add     $a0,$zero, $t0    
    jal     Stack_Push

    add    $a0,$zero,$zero
    
    # push old $s0 to stack (fp-8)
    add     $a0,$zero, $s0    
    jal     Stack_Push

    add    $a0,$zero,$zero
    
    # push old $s1 to stack (fp-12)
    add     $a0,$zero, $s1    
    jal     Stack_Push

    add    $a0,$zero,$zero

    # push old $s2 to stack (fp-16)
    add     $a0,$zero, $s2    
    jal     Stack_Push

    add    $a0,$zero,$zero

    # push array address (fp-20)
    add     $a0,$zero, $t1    
    jal     Stack_Push 

    add    $a0,$zero,$zero
    
    # push start (fp-24)
    add     $a0,$zero, $a1    
    jal     Stack_Push

    add    $a0,$zero,$zero
    
    # push end  (fp-28)
    add     $a0,$zero, $a2    
    jal     Stack_Push

    add    $a0,$zero,$zero

    # restore array address
    add     $a0,$zero, $t1    

    # restore end, left, right
    add     $s0,$zero, $a1    
    add     $s1,$zero, $a2    
    add     $s2,$zero, $a1    

    j       outer_while_loop_recursive_sort

swap_inner_recursive_sort:
    
    # swap A[r] and A[l], $a0 ------>  base address of array A,put l in $a1 , put r in $a2
    add     $a1,$zero, $s0        
    add     $a2,$zero, $s1        
    
    # call swap function
    jal     swap            

    # restore $a1 , $a2
    lw      $a1, -24($fp)   
    lw      $a2, -28($fp)   

    j       outer_while_loop_recursive_sort



       
proceed8_prints:

    # print index where n is found
    add    $v0,$zero, $zero      
    addi   $v0,  $v0, 1
    add    $a0,$zero,$zero
    add     $a0,$zero, $s1
    syscall

    # print found_prompt
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, found_prompt
    syscall

    # print value
    add    $v0,$zero, $zero      
    addi   $v0,  $v0, 1
    add    $a0,$zero,$zero
    add     $a0,$zero, $s2
    syscall

    # print index_
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, index_
    syscall
    
    # print next_line
    addi    $v0,$zero, 0
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    addi    $v0,$v0, 1      
    la      $a0, next_line
    syscall

    j       terminate


proceed2:
    # else set the return value to mid1
    add     $v0,$zero, $zero                                
    add     $v0,$zero, $t1                                
    
    j       return_from_recursive_search_label                 

proceed1:
    # else set the return value to mid2
    add     $v0,$zero, $zero                                
    add     $v0,$zero, $t2                                
    
    j       return_from_recursive_search_label                 

proceed7:    
    add     $t1, $t3, $t2       
    
    # load array value at index i  in $t1
    lw      $t1, 0($t1)         
    
    # offset +=4
    addi    $t2, $t2, 4         
    
    
    # print array value at index i
    add    $v0,$zero, $zero      
    addi   $v0,  $v0, 1
    add    $a0,$zero,$zero
    
    # loading  array value at index i in $a0
    add     $a0,$zero, $zero    
    add     $a0,$zero, $t1    
    syscall             

    
    addi    $v0,$zero, 11     
    add    $a0,$zero,$zero
    
    # loading space character in $a0
    add    $a0,$zero, $zero     
    addi    $a0,$zero, 32     
    syscall

    
    # i = i + 1 
    addi    $t0, $t0, 1 
    j       display_FOR_LOOP


proceed6:
    
    # swap A[p] and A[r] , $a0 --> base address of array A ,  p --> $a1
    add     $a1,$zero, $s2        
    
    # move r to $a2
    add     $a2,$zero, $s1  

    # call swap with parameters A, p, r
    jal     swap            
    
    # load left into $a1
    lw      $a1, -24($fp)   
    
    # set $a2 to r-1
    add    $a2, $s1,$zero    
    addi    $a2, $a2, -1    

    # call recursvive sort with parameters A, left, r-1
    jal     recursive_sort  

    # call to recursive sort(A, right , r+1)  , $a0 already has base address of array A , set $a1 to r+1
    addi    $a1, $s1, 1     
    
    # loading in $a2  with right
    lw      $a2, -28($fp)   
    
    # call recursvive sort 
    jal     recursive_sort  

    j       return_recursive_sort




proceed4:
    
    # call recursive search ,$a0 : array base address , $a1 is mid2 + 1
    add     $a1, $t2, $zero                             
    addi    $a1, $a1, 1                             
    
    # $a2 : end , $a3 : key , call recursive search 
    jal     recursive_search                        

    j       return_from_recursive_search_label                 

proceed3:
    # call recursive search ,$a1 : start ,$a0 : array base address
    # so , a2 is  mid1 - 1
    addi    $a2, $t1, -1                            

    # $a3 is key
    # call recursive search fn
    jal     recursive_search                        
    
    # return
    j       return_from_recursive_search_label                 


proceed5:
    # setting value of register $t0 as  end index  - start index
    add     $t0, $zero, $zero   
    add     $t0, $zero, $a2   
    sub     $t0, $t0, $a1   
    
    # setting value of register $t0 as  (end index - start index) / 3
    div		$t0, $t0, 3     
    
    # setting value of register $t1 as  start index + (end index - start index) / 3 = mid1
    add     $t1, $a1, $zero   
    add     $t1, $t1, $t0   
    
    # setting value of register $t2 as  end index - (end index - start index) / 3 = mid2
    add     $t2, $zero, $zero   
    add     $t2, $a2, $zero   
    sub     $t2, $t2, $t0   
    
    
    # setting value of register $t3 as  4*mid1
    add     $t3, $t1, $zero     
    sll     $t3, $t3, 1     
    sll     $t3, $t3, 1     
    
    # setting value of register $t3 as  A + 4*mid1
    add     $t3, $t3, $zero   
    add     $t3, $t3, $a0   
    
    # loading $t3 as  A[mid1]
    lw      $t3, 0($t3)     

    
    # setting value of register  $t4 as 4 * mid2
    add     $t4, $t2, $zero     
    sll     $t4, $t4, 1     
    sll     $t4, $t4, 1     
    
    # setting value of register  $t4 as A + 4 * mid2
    add     $t4, $t4, $zero   
    add     $t4, $t4, $a0   
    
    # loading $t4 as  A[mid2]
    lw      $t4, 0($t4)     

    j       key_eq_recursive_search_mid1_label


