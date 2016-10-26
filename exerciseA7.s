# A program that reads in three integers and prints out the sum of the largest two of the three integers.

        .data
str:    .asciiz "This is a program that reads in three integers and prints out the sum of the largest two of the three integers.\n\n"
str1:   .asciiz "Enter a number: "
        .text
        .globl main

main:   li		$v0, 4		        # System call code to print string 
        la		$a0, str	        # Print str
        syscall

        li		$v0, 4		        # System call code to print string 
        la		$a0, str1	        # Print str1
        syscall
        li		$v0, 5		        # System call code to read integer
        syscall
        add		$s6, $s3, $s6		# Add i to array and store in array
        move 	$s2, $v0	        # Move integer to $s2
        add		$s6, $s2, $s6		# Add $s2 to array                                          

        li		$v0, 4		        # System call code to print string 
        la		$a0, str1	        # Print str1
        syscall
        li		$v0, 5		        # System call code to read integer
        syscall

        li		$v0, 4		        # System call code to print string 
        la		$a0, str1	        # Print str1
        syscall
        li		$v0, 5		        # System call code to read integer
        syscall

        li		$v0, 1		        # System call to print integer 
        move 	$a0, $s6		    # Moved sum to $a0 for system call
        syscall

        li		$v0, 10		        # Exits the program
        syscall
        