import 'package:task2/task2.dart' as task2;

void main() {
// number =  the number which will check if it is palindrome or not 
    int number = 1111; 

// calling the ispalindrome function to check the number
    if (isPalindrome(number)) {
      print('$number is a palindrome.');
    } else {
      print('$number is not a palindrome.');
    }
  }

// generating the ispalindrome function to check if it is palindrome or not 
  bool isPalindrome(int number) {
    int originalNumber = number;
    int rNumber = 0;

// checking of number less than 0 or not 
// then reversing the number using mathematical operation
    while (number > 0) {
      int remainder = number % 10;
      rNumber = (rNumber * 10) + remainder;
      number = number ~/ 10;
    }
// if the number is less than 0 so the return number will be 0 
// if the number not less than 0 so the mathematicl operation will work and return number 
    return originalNumber == rNumber;
  }

