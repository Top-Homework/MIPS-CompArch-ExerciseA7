# A program that reads in three integers and prints out the sum of the largest two of the three integers.
# Branch less than equal to: 
#Equivalent C++ pseudocode
#Warning - This pseudocode has not been tested
# main ()
# {
#         string str = "This is a program that reads in three integers and prints out the sum of the largest two of the three integers.\n\n"
#         string str1 = "Enter a first number: "
#         string str2 = "Enter a second number: "
#         string str3 = "Enter a third number: "
#         int sum = 0;
#         int num1;
#         int num2;
#         int num3;
#         cout << str << endl;
#         cout << str1 << endl;
#         cin >> num1;
#         cout << str2 << endl;
#         cin >> num2;
#         cout << str3 << endl;
#         cin >> num3;
#         if (num1 <= num2)
#         {
#                 if (num2 <= num3)
#                 {
#                         sum = num2 + num3;
#                 }
#                 else
#                 {
#                         if (num1 <= num3)
#                         {
#                                 sum = num1 + num3
#                         }
#                         else
#                         {
#                                 sum = num2 + num1;
#                         }
#                 }
#         }
#         else
#         {
#                 if (num1 <= num3)
#                 {
#                         sum = num1 + num3;
#                 }
#                 else
#                 {
#                         if (num2 <= num3)
#                         {
#                                 sum = num1 + num3;
#                         }
#                         else
#                         {
#                                 sum = num1 + num2;
#                         }
#                 }
#         }
#         cout << "The sum of the 2 largest numbers entered is: " << sum << endl;
#         return 0;
# }

        .data
str:    .asciiz "This is a program that reads in three integers and prints out the sum of the largest two of the three integers.\n\n"
str1:   .asciiz "Enter a first number: "
str2:   .asciiz "Enter a second number: "
str3:   .asciiz "Enter a third number: "
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
        move 	        $s1, $v0	        # Move integer to $s2                                          

        li		$v0, 4		        # System call code to print string 
        la		$a0, str2	        # Print str1
        syscall
        li		$v0, 5		        # System call code to read integer
        syscall
        move 	        $s2, $v0	        # Move integer to $s2

        li		$v0, 4		        # System call code to print string 
        la		$a0, str3	        # Print str1
        syscall
        li		$v0, 5		        # System call code to read integer
        syscall
        move 	        $s3, $v0	        # Move integer to $s2

        li		$v0, 1		        # System call to print integer 
        move 	        $a0, $s6                # Moved sum to $a0 for system call
        syscall

        li		$v0, 10		        # Exits the program
        syscall
        