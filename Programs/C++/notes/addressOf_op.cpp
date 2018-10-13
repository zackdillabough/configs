#include <iostream>
using namespace std;

int main() {
	int i, j, y, p;

/* address-of (pointer) data type*/
	int* x;

	i = 2;
	j = 4;

/* address-of operator = & */
	x = &i;
// 	x = 0x150...


// indirection/dereference operator	
	*p = 37;
	// "go to address @ p, and set value to 37."
	p = &j;
	// get address-of j, and set to p.
	*p = 14;


	cout << "variable i = " << i << endl
		 << "address: " << x << endl
		 << "variable j = " << j << endl
		 << "x = &i evals to: " << x << endl
		 << "*x * j  evals to: " << *x * j << endl;

}
