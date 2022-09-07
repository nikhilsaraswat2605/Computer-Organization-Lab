###############################################################################
    # Assignment Number:  Mips assignment 3 
    # Problem Number: 1
    # Semester Number: 5
    # Group Number: 22
    # Group Members: Amit Kumar(20CS30003), Nikhil Saraswat (20CS10039)
###############################################################################

.globl  main
.data

# program output text constants
input_prompt1:                      # prompt for input
    .asciiz "Enter four positive integers n, a, r and m:\n"
DET_prompt:                         # prompt for Determinant
    .asciiz "Final determinant of the matrix A is "
not_positive_n:                     # error message for n
    .asciiz "Please enter positive integers for n.\n"
not_positive_a:                     # error message for a
    .asciiz "Please enter positive integers for a.\n"
not_positive_r:                     # error message for r
    .asciiz "Please enter positive integers for r.\n"
not_positive_m:                     # error message for m
    .asciiz "Please enter positive integers for m.\n"
input_n_p:                          # prompt for n
    .asciiz "Enter n: "
input_a_p:                          # prompt for a
    .asciiz "Enter a: "
input_r_p:                          # prompt for r
    .asciiz "Enter r: "
input_m_p:                          # prompt for m
    .asciiz "Enter m: "
Matrix_prompt:                      # prompt for Matrix
    .asciiz "Matrix A:"
tab:                                # tab   
    .asciiz "\t"
newline:                            # newline
    .asciiz "\n"

.text

# main program
# program variables
#  m: $s5
#  determinant: $s4
#  matrix A base address: $s3
#  r: $s2
#  a: $s1
#  n: $s0

main:
    # print input prompt
    addi    $v0, $zero, 4          
    la      $a0, input_prompt1
    syscall

    j      input_n

    input_n: # label for input n
        # print input n prompt
        addi    $v0,$zero, 4          
        la      $a0, input_n_p
        syscall
        
        # get n from user
        addi    $v0,$zero, 5          
        syscall  

        # $s0 = n
        add    $s0, $v0, $zero  

        # check if n is positive
        bgt     $s0, $zero, input_a     
        
        # error messsage
        addi    $v0,$zero, 4
        la      $a0, not_positive_n
        syscall
        # unconditional jump to input n
        j       input_n

    input_a: # label for input a
        # print input a prompt
        addi    $v0,$zero, 4          
        la      $a0, input_a_p
        syscall

        # get a from user
        addi    $v0,$zero, 5   
        syscall

        # $s1 = a
        add    $s1, $v0 , $zero 

        # check if a is positive
        bgt     $s1, $zero, input_r     
        
        # error messsage
        addi    $v0,$zero, 4
        la      $a0, not_positive_a
        syscall

        # unconditional jump to input n
        j        input_a

    input_r: # label for input r
        # print input r prompt
        addi    $v0,$zero, 4          
        la      $a0, input_r_p
        syscall

        # get r from user
        addi    $v0,$zero, 5          
        syscall

        # $s2 = r
        add    $s2, $v0 , $zero 

        # check if r is positive
        bgt    $s2,$zero, input_m     
        
        # error messsage
        addi    $v0,$zero, 4
        la      $a0, not_positive_r
        syscall
        
        # unconditional jump to input n
        j       input_r


    input_m: # label for input m
        # print input m prompt
        addi    $v0,$zero, 4          
        la      $a0, input_m_p
        syscall

        # get m from user
        addi    $v0,$zero, 5        
        syscall

        # store m in $s5
        add    $s5, $v0 , $zero 

        # check m is positive
        bgt     $s5,$zero, proceed1     
        
        # error messsage
        addi    $v0,$zero, 4
        la      $a0, not_positive_m
        syscall

        # unconditional jump to input n
        j       input_m

#---------------------------------------------------------------------------------------------------------------

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


proceed1:   
    # init stack
    jal     stack_init       

    # allocate space for matrix A
    # $a0= n
    add     $a0 , $s0, $zero     

    # $a0 = n*n
    mul     $a0, $a0, $a0           
    
    # call function Stack_Malloc with one  argument as $a0=n*n
    jal     Stack_Malloc           
    
    # $s3 = matrix A base address
    add    $s3, $v0, $zero          

    # jump to populate_A label 
    
    # set offset to zero
    addi    $t0,$zero, 0  

    # set multiplier as one
    addi    $t1,$zero, 1          
    
    j      populate_A

# malloc function
# parameters
# size: $a0
# return base address: $v0

Stack_Malloc:
    sll     $a0, $a0, 2
    mul     $a0, $a0, -1

    # allocate space 
    add		$sp, $sp, $a0   
    
    # return base address
    addi    $v0, $sp, 0        

    # return
    jr      $ra

# push function stuffs
# n: $a0

Stack_Push:
    
    # make space for storing the new element
    addi    $sp, $sp, -4    
    
    # save the new element to stack
    sw      $a0, 0($sp)     
    
    jr      $ra

# pop function stuffs

Stack_Pop:
    
    # store the first element of stack as return value
    lw      $v0, 0($sp)     
    
    # pop it from the stack
    addi    $sp, $sp, 4   

    jr      $ra



populate_A:

    
    
    # assign $t2 to  a*multiplier
    add     $t2, $s1, $zero
    mul     $t2, $t2, $t1   
    
    # $t2 divided by m
    div		$t2, $s5		

    # $t2 = a*multiplier mod m
    # move from hi to $t2
    mfhi	$t2     

    # $t3 = $t0
    add     $t3, $zero, $t0 
    # $t3 = $t3 * 4
    sll     $t3, $t3, 2     
    # $t3 = matrix A base address + 4*offset
    add     $t3, $t3,$s3    
    
        
    
    # store a*multiplier mod m to the location A + 4*offset
    sw      $t2, 0($t3)     
    
    
    addi    $t0, $t0, 1     
    addi    $t0, $t0, -1     
    addi    $t0, $t0, 1     

    
    # $t1 = $t1*r
    mul     $t1, $s2, $t1   
    
    # $t1 / m
    div		$t1, $s5		
    
    # $t1 = $t1 mod m 
    mfhi	$t1				
    
    
    # $t2 = n*n
    add     $t2, $s0, $zero   
    mul     $t2, $t2, $t2   
    
    # if offset < n*n then loop
    bgt		$t2,$t0 , populate_A	
    ble     $t2, $t0, proceed2
    
    proceed2:
    # issue matrix A print prompt
    addi    $v0,$zero, 4          
    la      $a0, Matrix_prompt
    syscall

    # issue newline print prompt
    addi    $v0,$zero, 4          
    la      $a0, newline
    syscall

    # issue newline print prompt
    addi    $v0,$zero, 4          
    la      $a0, newline
    syscall

    

    # Matrix A
    # $a1 = base address of A
    add    $a1, $s3, $zero  
    # $a0 = n
    add    $a0, $s0, $zero  
    # calling Matrix_Print fn with 2 parameters
    jal     Matrix_Print     


    # determinant of A 
    # $a1 = base address of A 
    add    $a1, $s3 , $zero 
    
    # $a0 = n
    addi   $s0, $s0 ,1
    add    $a0, $s0, $zero  
    addi   $a0, $a0, -1
    
    # calling fn
    jal     Determinant_using_Recursion   


    # $s4 = determinant
    add    $s4, $v0, $zero         

    # prompt for det
    addi    $v0,$zero, 4          
    la      $a0, DET_prompt
    syscall

    # print det
    addi    $v0,$zero, 1          
    # det = $a0
    add    $a0, $s4 , $zero 
    syscall

    # newline
    addi    $v0,$zero, 4          
    la      $a0, newline
    syscall

    # restoring stack pointer
    # deallicate memory
    add     $t0, $s0,$zero 
    mul     $t0, $t0, $t0
    sll     $t0, $t0,2
    # deallocate Matrix A
    add     $sp, $sp, $t0   

    j       Termination

Termination:
    
    addi    $v0,$zero, 10  

    # restore frame pointer
    lw      $fp, 0($sp)     
    # restore stack pointer
    addi    $sp, $sp, 4     
    # terminate program
    syscall


# function stuffs
# $s4 : current sum
# $s5 : current sign
# $a0 (stored in $s0) : n
# $a1 (stored in $s1) : matrix A (base address)
# $s3 : intermediate matrix A' base address
# $s2 : column index

Determinant_using_Recursion:
    # $t0 = $ra
    add    $t0, $t1, $zero    
    add    $t0, $ra, $zero    
    # intialize $sp , $fp
    jal     stack_init   
    # $t1 = $a0 --> n
    add    $t1, $a0, $zero    
    
    
    # saving current value of ra to (fp-4) stack 
    add    $a0, $a0,$zero
    add    $a0, $t0, $zero    
    jal     Stack_Push
    
    # saving current value of s0 to (fp-8) stack 
    add    $a0, $a0,$zero
    add    $a0, $s0 ,$zero   
    jal     Stack_Push
    
    # saving current value of s1 to (fp-12) stack 
    add    $a0, $a0,$zero
    add    $a0, $s1, $zero    
    jal     Stack_Push
    
    # saving current value of s2 to (fp-16) stack 
    add    $a0, $a0,$zero
    add    $a0, $s2 , $zero   
    jal     Stack_Push
    
    # saving current value of s3 to (fp-20) stack 
    add    $a0, $a0,$zero
    add    $a0, $s3, $zero    
    jal     Stack_Push
    
    # saving current value of s4 to (fp-24) stack 
    add    $a0, $a0,$zero
    add    $a0, $s4 , $zero   
    jal     Stack_Push
    
    # saving current value of s5 to (fp-28) stack
    add    $a0, $a0,$zero
    add    $a0, $s5, $zero
    jal     Stack_Push

    # store A base address in $s1 (for later use)
    add    $s1, $s1, $zero
    add    $s1, $a1, $zero
    # store n in $s0
    add    $s0, $s0, $zero    
    add    $s0, $t1, $zero    
    # set column index = 0
    add   $s2, $zero,$zero      


    # allocating space for  Matrix A transpose
    # $t0 = n - 1
    add     $t0, $s0, $zero    
    
    # $a0 = (n-1)*(n-1)
    add     $a0, $t0, $zero   
    addi    $t0, $t0, -1    
    addi     $a0, $a0, -1      
    mul     $a0, $a0, $a0   
    
    # calling Stack_Malloc 
    jal     Stack_Malloc   
    # store return value, i.e. base address of A' in $s3
    add    $s3, $v0 , $zero        
    addi    $s3, $s3 , -1        
    addi    $s3, $s3 , 1        

    # set current sign ---> +1
    addi     $s5,$zero, 1      
    # set current sum ---> 0
    addi     $s4,$zero, 0      

    beq     $s0, 1 base_case

    j       recursive_first_loop

recursive_first_loop:
    # if n == column index 
    beq     $s0, $s2, recursion_return
    bne     $s0, $s2, proceed3

    proceed3:
    
    add     $t0, $s3 , $zero
    addi    $t0, $t0 , -1
    addi    $t0, $t0 , 1
    # current column = 0
    add     $t1,$zero, $t1  
    addi    $t1,$zero, 0  
    # current row = 1
    add     $t2,$zero, $t2  
    addi    $t2,$zero, 1    

    j       recursive_populate_loop      

recursive_populate_loop:
    # if current column == column 
    beq     $s2,$t1, recursive_populate_loop_next_col  
    bne     $s2,$t1, proceed4
    
    proceed4:
    # $t3 = $t2 * n
    add     $t3, $zero, $t2   
    mul     $t3, $t3, $s0   
    # $t3 = $t3 + $t1   
    add     $t3, $t3, $t1   
    addi     $t3, $t3, -1   
    addi     $t3, $t3, 1   
    # $t3 = 4 * $t3
    sll     $t3, $t3, 2     
    # $t3 = $t3 + $s1
    add     $t3, $t3, $s1   
    addi     $t3, $t3, 1   
    addi     $t3, $t3, -1   
    # $t3 = M{$t3}
    lw      $t3, 0($t3)     
    
    # store in A transpose
    sw      $t3, 0($t0)     

    # offset = offset + 4
    addi    $t0, $t0, 4     
    addi    $t0, $t0, -4     
    addi    $t0, $t0, 4

    j     recursive_populate_loop_next_col     

recursive_populate_loop_next_col:
    # current column + = 1
    addi    $t1, $t1, 1                         
    addi    $t1, $t1, -1                         
    addi    $t1, $t1, 1                         
    # if current column < n then loop else move to next row
    blt     $t1,$s0, recursive_populate_loop   
    bge     $t1,$s0, proceed5   

    proceed5:
    addi    $t1,$zero, 0                              
    addi    $t1,$t1, -11                              
    addi    $t1,$t1, 11                              
    # current row +=1
    addi    $t2, $t2, 1                         
    
    blt     $t2, $s0, recursive_populate_loop   
    bge     $t2, $s0, proceed6

    proceed6:
    # $a0 = n - 1
    addi    $a0, $s0, -1                        
    # $a1 = A transpose base address
    add    $a1, $s3 , $zero                            
    # call Determinant_using_Recursion with parameters n-1, A transpose
    jal     Determinant_using_Recursion

    # $t0 = column index * 4
    sll     $t0, $s2, 2                         
    # $t0 = A + column index * 4
    add     $t0, $t0, $s1                       
    
    lw      $t0, 0($t0)                         
    
    mul     $t0, $t0, 1                       
    mul     $t0, $t0, $v0                       
    
    mul     $t0, $t0, 1                       
    mul     $t0, $t0, $s5                       
    
    add     $s4, $s4, $t0                       
    # sign = -sign
    mul     $s5, $s5, 1                        
    mul     $s5, $s5, -1                        

    # column index +=1
    addi    $s2, $s2, 1                         
    j       recursive_first_loop

base_case:
    add    $s4, $s1, $zero
    lw      $s4, 0($s4)

    j      recursion_return     

recursion_return:
    # $t0 = n - 1
    add     $t0, $s0, $zero
    addi    $t0, $t0, -1    
    # $t0 = (n-1)*(n-1)
    mul     $t0, $t0, $t0   
    mul     $t0, $t0, 1
    # $t0 = 4*(n-1)*(n-1)
    sll     $t0, $t0, 2     
    add     $sp, $sp, $t0   

    
    add    $t0, $s4 , $zero        
    add    $t0, $t0 , 1        
    add    $t0, $t0 , -1        

    jal     Stack_Pop
    # restore $s5
    
    add    $s5, $v0 , $zero        
    addi    $s5, $s5 ,1        
    addi    $s5, $s5 , -1        
    jal     Stack_Pop
    # restore $s4
    add    $s4, $v0 ,$zero        
    addi    $s4, $s4 ,1       
    addi    $s4, $s4 ,-1       
    jal     Stack_Pop
    # restore $s3
    add    $s3, $v0 ,$zero        
    addi    $s3, $s3 ,1       
    addi    $s3, $s3 ,-1       
    jal     Stack_Pop
    # restore $s2
    add    $s2, $v0 , $zero       
    addi    $s2, $s2 ,1       
    addi    $s2, $s2 , -1       
    jal     Stack_Pop
    # restore $s1
    add    $s1, $v0 , $zero        
    addi    $s1, $s1 ,1        
    addi    $s1, $s1 , -1        
    jal     Stack_Pop
    # restore $s0
    add    $s0, $v0 , $zero        
    addi    $s0, $s0 ,1        
    addi    $s0, $s0 , -1        
    jal     Stack_Pop
    # restore $ra
    add    $ra, $v0 , $zero       

    
    add    $v0, $t0 , $zero        

  
    lw      $fp, 0($sp)     
    # restore stack pointer
    addi    $sp, $sp, 4     

    # return
    jr      $ra             


# print  function stuffs
# n: $a0
# base address of matrix: $a1

Matrix_Print:
    
    # offset = 0
    addi    $t0,$zero, -1
    addi    $t0,$zero, 0
  
    # column_index = 0
    addi    $t1,$zero, 11
    addi    $t1,$zero, 0


Matrix_print_loop:
    
    # $t2 = 4*offset
    addi    $t0,$t0, 0
    sll     $t2, $t0, 2
    addi    $t2,$t2, 0
    
    # $t2 = base address of A + 4*offset
    add     $t2, $a1, $t2
    
    # load the value at A + 4*offset into $t2
    lw      $t2, 0($t2)     

    
    # temporarily store n in $t3
    add    $t3, $a0 , $zero       

    
    # print $t2
    addi    $v0,$zero, 1          
    add    $a0, $t2 , $zero
    syscall

    
    # print tab
    addi    $v0,$zero, 4          
    la      $a0, tab
    syscall

    
    add   $a0, $t3 , $zero        

    
    addi    $t0, $t0, 1             

    addi    $t1, $t1, 1             
    
    # if column_index < n then loop else print newline
    blt     $t1, $a0, Matrix_print_loop     
    bge     $t1, $a0, proceed7     

    proceed7:
    # temporarily store n in $t2
    add    $t2, $a0 , $zero       
    
    
    # print newline
    addi    $v0,$zero, 4          
    la      $a0, newline
    syscall
    
    
    # reset column_index = 0
    addi    $t1,$zero, 0          

    
    # restore n in $a0
    add    $a0, $t2 , $zero        

    
    # $t2 = n*n
    add     $t2, $a0, $zero       
    mul     $t2, $t2, $t2       
    
    # if offset < n*n then loop else return
    blt		$t0, $t2, Matrix_print_loop	
    bge		$t0, $t2, proceed8	

    
    proceed8:
    # print an extra newline for clean output
    addi    $v0,$zero, 4          
    la      $a0, newline
    syscall

    jr      $ra


    
