#include <iostream>
using namespace std;

bool isOp(char op) {
	char ops [5] = {'+','-','/','*','%'};

	for(int i = 0; i < (sizeof(ops)/sizeof(ops[0])); ++i)
		if (op == ops[i])
			return true;
	return false;
}

int main() {
	int a;
	int b;
	int ans;
	float ans2;
	char o;
	
	cout << "Enter an integer: ";
	cin >> a;
	cout << "Enter an arithmetic operator: ";
	cin >> o;
	if(!isOp(o)){
		cerr << "You did not enter a valid operator. Goodbye." << endl;
		return 0;
	}
	cout << "Enter an integer: ";
	cin >> b;
	if(o == '/' && b == 0) {
		cerr << "\nCannot divide by 0. Goodbye." << endl;
		return 0;
	}
	
	switch(o) {
		case '+': ans = a + b;
				  break;
		case '-': ans = a - b;
				  break;
		case '/': ans = a / b;
				  ans2 = (float)a / b;
				  break;
		case '*': ans = a * b;
				  break;
		case '%': ans = a % b;
				  break;
	}

	cout << "\n" << a << " " << o << " " << b << " = " << ans; 
	if (o == '/') 
		cout << "\t(warning: integer division executed)" << endl <<
				a << " " << o << " " << b << " = " << ans2 << endl;
	else
		cout << endl;
}
