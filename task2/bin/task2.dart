import 'package:task2/task2.dart' as task2;

void main() {

    int number = 1111; // Replace with the number you want to check
    if (isPalindrome(number)) {
      print('$number is a palindrome.');
    } else {
      print('$number is not a palindrome.');
    }
  }

  bool isPalindrome(int number) {
    int originalNumber = number;
    int rNumber = 0;

    while (number > 0) {
      int remainder = number % 10;
      rNumber = (rNumber * 10) + remainder;
      number = number ~/ 10;
    }

    return originalNumber == rNumber;
  }


