// $ foo 12 hi
// 1. command name
// 2 & 3. args

// 			 argv = "argument vector"
// 			 argc = "argument count"
// 			 would eval. (in this case) to '3'
int main(int argc, char* argv[]) {
   				// parameter = array of pointers to char-arrays

	cout << argv[0]; // would output 'foo'
					 // argv[0] is a pointer to 'f', denoting the
					 // beginning of an array that contains:
					 // 'f','o','o','0'

 	// can use 'atoi()' from <cstdlib> to convert args of type
	// []char to int (necessary if you needed to perform arithmetic operations).

}
