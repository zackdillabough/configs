#include <iostream>
#include <cstdlib>	// stdlib.h (C)
using namespace std;

int main(){
	int x = 23;
	int e = 24;
	int t = 28;
	
	// when using the comma operator, the expression evaluates to the last value (in this case, '28' is assigned to var 'com'
	int com = (x, e, t);
	
	int i;
	char name[] = "zack";
	for (i = 0; name[i]; i++);
	cout << "\"" << name << "\"" << " is composed of " << i << " characters." << endl;

	// DYNAMIC MEM ALLOCATION
	// in c, the user must perform the job of Java's 'Garbage Collector'
	//
	// --- important FUNCTIONS in Mem Alloc ---
	//
	// "malloc(int nbytes)" 	<----allocates memory
	// "free(ptr)"				<----frees the allocated memory
	// "realloc(ptr, size_t)"	<---used when growing a chunk of memory
	// 
	// --- FUNC PROTOTYPE OF MALLOC ---
	//					   
	// void* malloc(size_t size);
	// 					   ^# of bytes
	// 				^size_t is a "typedef"
	//
	// 				typedef data_type name;			// general
	// 				typedef unsigned long size_t;	// specific case
	// ^void* is an ambiguous pointer, and depends on the d-type that size_t evals to. (read malloc documentation)**			
	

	const int NINTS = 5;
	int* p = (int*) malloc(NINTS * sizeof(int)); // basically instantiating an array
	
	for (int i = 0; i < NINTS; i++)
		*(p + i) = i;
//		p[i] = i;   (same thing! the ver above utilizes pointer-arithmetic & the dereference/indirection operator)
	for (int i = 0; i < NINTS; i++)
		cout << p[i] << endl;

}
