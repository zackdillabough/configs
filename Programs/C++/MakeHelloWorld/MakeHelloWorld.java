import java.util.Calendar;

/*
 * This Java program prints to the standard output stream a C++ program 
 * that prints the phrase _hello, world_ (underscores excluded) 
 * followed by a newline to the standard output stream. 
 *
 * @creator Zack Dillabough
 * @created 02018.09.14
 */

public class MakeHelloWorld {
		
	public static void main(String[] args){
		
		Calendar date = Calendar.getInstance();

		int currentDay = date.get(date.DATE);
		int currentMonth = date.get(date.MONTH) + 1;
		int currentYear = date.get(date.YEAR);
		
		String formatDay = currentDay < 10 ? 
				"0" + currentDay : Integer.toString(currentDay);

		String formatMonth = currentMonth < 10 ? 
				"0" + currentMonth : Integer.toString(currentMonth);

		String formatYear = currentYear < 9999 ? 
				"0" + currentYear : Integer.toString(currentYear);

		System.out.printf("/*\n" +
		   "* This C++ program prints to the standard " +
		   "output stream the phrase\n" +
		   "* _hello, world_ (underscores excluded) " +
		   "followed by a newline to the\n" +
		   "* standard output stream.\n" +
		   "*\n" +
		   "* @creator Zack Dillabough\n" +
		   "* @generated %s.%s.%s\n" +
		   "*/\n" +
		   "#include <iostream>\n\n" +
		   "int main(int, char**) {\n" +
		   "std::cout << \"hello, world\\n\";\n" +
	   	   "}\n", formatYear, formatMonth, formatDay);
	}
}
