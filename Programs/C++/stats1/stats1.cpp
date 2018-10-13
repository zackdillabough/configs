/*
 * This program computes some statistics using
 * integer arrays as data sets
 * creator: Zachary Dillabough
 * created: 10/11/2018
 */

#include <iostream>
using namespace std;

int main() {
	int stats(int[], int, double&, double&, int&);
	int stats(int[], int, bool = false);
	int stats(const char[], int, double, double, int);
	int stats(const char[], int, bool = false);
	
	double mean;
   	double median = 0;
	int mode = 0;
	int range;

	int seta[] = { 5, 10, 15, 20, 25 }; 
	int alen = sizeof(seta) / sizeof(seta[0]);

	int setb[] = { 2, -2, 0, 2, -2, 2, -2, -2 };
	int blen = sizeof(setb) / sizeof(setb[0]);

	int setc[] = { 10, 9, 8, 10, 1, -1 };
	int clen = sizeof(setc) / sizeof(setc[0]);

	range = stats(seta, alen, mean, median, mode);
	(void) stats("set A: ", range, mean, median, mode);
	range = stats(setb, blen, mean, median, mode);
	(void) stats("set B: ", range, mean, median, mode);
	range = stats(setc, clen, mean, median, mode);
	(void) stats("set C: ", range, mean, median, mode);
	
	(void) stats("set A: ", stats(seta, alen));
	(void) stats("set A: ", stats(seta, alen, true), true);
	
	(void) stats("set B: ", stats(setb, blen));
	(void) stats("set B: ", stats(setb, blen, true), true);

	(void) stats("set C: ", stats(setc, clen));
	(void) stats("set C: ", stats(setc, clen, true), true);

}

int stats(int set[], int nelems, double& mean, double& median, int& mode) {
	if (nelems < 2)
		return 0;
	int sum = 0;
	int smallest = set[0], largest = set[1];
	for (int i = 0; i < nelems; i++) {
		sum += set[i];
		if (set[i] > largest)
			largest = set[i];
		else if (set[i] < smallest)
			smallest = set[i];
	}
	mean = (double)sum/nelems;
	return largest - smallest;
}

int stats(int set[], int nelems, bool product = false) {
	if(product) {
		int prod = 1;
		for (int i = 0; i < nelems; i++)
			prod *= set[i];
		return prod;
	} else {
		int sum = 0;
		for (int i = 0; i < nelems; i++)
			sum += set[i];
		return sum;
	}
}

int stats(const char heading[], int range, double mean, double median, int mode) {
	for(int i = 0; heading[i]; i++) {
		cout << heading[i];
	}
	cout << " range=" << range 
		 << "; mean=" << mean 
		 << "; median=" << median 
		 << "; mode=" << mode
		 << endl;
	return range;
}

int stats(const char heading[], int n, bool product=false) {
	for(int i = 0; i < heading[i]; i++)
		cout << heading[i];
	if(product)
		cout << " product=" << n << endl;
	else
		cout << " sum=" << n << endl;
	return n;
}

