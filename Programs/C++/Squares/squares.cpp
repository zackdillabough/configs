#include <iostream>
using namespace std;

int main() {
	int getInput(void);
	void printLine(char inside, char outside, int length);
	void printStats(int numSquares, int lensTotal);

	int length = 0;
	int numSquares = 0;
	int lenTotal = 0;
	
	length = getInput();
	while (length != -1) {
		numSquares += 1;
		lenTotal += length;
		for (int i = 0; i < length; i++) 
			if (i == 0 || i == length - 1)	
				printLine('+','-',length);
			else
				printLine('|',' ',length);
		length = getInput();
	}
	
	printStats(numSquares, lenTotal);
	return 1;
}

int getInput() {
	int len;

	cout << "Enter length between 0 and 64 (-1 to exit): ";
	cin >> len;
	if (cin.fail()) {
		cout << "Length must be between 0 and 64 inclusive, or enter -1 to exit." << endl;
		return -1;
	} else if (len == -1)
		return -1;

	while (len < -1 || len > 64) {
		cout << "length entered: " << len << " is invalid" << endl
			 << "Length must be between 0 and 64 inclusive, or enter -1 to exit." << endl << endl
			 << "Enter length between 0 and 64 (-1 to exit): ";
		cin >> len;
	}

	cout << "length entered: " << len << endl;

	return len;
}

void printLine(char outside, char inside, int len) {
	for (int i = 0; i < len; i++)
		if (i == 0 || i == len - 1)
			cout << outside;
		else
			cout << inside;
	cout << endl;
}

void printStats(int nSquares, int lenTotal) {
	printf("%d squares printed. Average length: %.2f\n" , nSquares, (float)lenTotal/nSquares);
}

