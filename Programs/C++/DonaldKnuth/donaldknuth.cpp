#include <iostream>
using namespace std;

/*
 * This C++ program can be used to get inputs
 * for the csc240 #DonaldKnuth programming assignment.
 *
 * @creator gdt
 * @created 02017.09.04
 * @updated 02018.08.28
 */

int main(int, char**) {

   void knuth(int);
   const int EXIT = 0;
   int n;
   do {
      cerr << "Enter a whole number (" << EXIT << " to exit): ";
      cin >> n;
      if (n == EXIT)
         break;
      knuth(n < 0 ? -n : n);
   } while (true);

}

// prints the prime factorization for a composite number
//
void knuth(int n) {

   cout << n << " = ";
   
   int current = 2;
   bool isPrime = true;
   
   while (current < n) {
	 if (n == current) {
	    break;
	 } else if (n % current != 0) 
	    current++;
	    else {
		   isPrime = false;
	       cout << current << " * "; 
		   n /= current;
		   current = 2;
	    }
   }

   if (isPrime)
      cout << n << " (prime)";
   else
	  cout << n;

   cout << endl;

}

/*
   example outputs for inputs 42, 7, 100, -101

   42 = 2 * 3 * 7
   7 = 7 (prime)
   100 = 2 * 2 * 5 * 5
   101 = 101 (prime)

*/
