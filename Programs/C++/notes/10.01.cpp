#define LEN2 32
#include <iostream>
using namespace std;

int main() {
	void foo (int x[], int nelements);
	const int LEN = 16;
	int a[LEN];
	int b[LEN2];

	foo(a, LEN);

	// an array name is merely a pointer to the beginning of an array.
	
	cout << sizeof(int) << endl;
}

void foo (int x[], int nelements) {
	//   (int* x, int nelements) { 		**SYNON
	// we're passing an array pointer
	
	int sum = 0;

	for (int i = 0; i < nelements; i++) {
		sum += x[i]; // becomes *(x + i * sizeof(int))
							//	^ dereference operator
							//	internal operation:
							//	(0x150 + 0 * 4) = 0x150 --> @ i = 0
							//	(0x150 + 1 * 4) = 0x154 --> @ i = 1
							//	(0x150 + 2 * 4) = 0x158 --> @ i = 2 (and so on..)
							//
							//	this pointer-functionality allows for accessing data outside of a given array (not recommended)
	}
}

// 	SYNONYMOUS:
//	x[1] = 8;
//	*(x + 1) = 8;				**client <---
//	*(x + 1 * sizeof(int)) = 8;	**internal <-
//											|
//	this is called "pointer arithmetic" -----
//
//
//
// strings in C are null-terminated arrays of type char
// 					(0)

// char* n = "joe"; 	same thing
// char name[] "joe";
// for (int i = 0; name[i]; i++)
// 	cout << name[i] << endl;
//
// would output:
// j
// o
// e
//
// array would contain: j, o, e, 0
//
// once the loop reaches name[3] (0), the loop would finish. 
// This is because 0 == false.
