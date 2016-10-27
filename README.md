# MIPS-CompArch-ExerciseA7
This repository is for Homework #5 for Computer Architecture. The program will read 3 integers and print out the sum of the largest 2 of the 3 integers. This will break ties arbitrarily.



Here is the logic tree

									-------------------- Is s1 <= s2? -------------------
									|													|
								Yes	|													| No
									|													|
									s2													s1
									|													|
									|													|
									|													|
						----- Is s2 <= s3? ------							----- Is s1 <= s3? -----
						|						|					|			|
					Yes	|						| No		Yes |			| No
						|						|				|			|
					s2 + s3					is s1 <= s3?		s1 + s3		is s2 <= s3?
