import 'G:\My Drive\CAT-task' as test2;

void main() {

// generating list (integer) 
  List<int> numbers = [10, 20, 23, 45, 96, 10, 21, 22, 21];

  // Removeing dublicates useing toset function
  // and returning it back to list using tolist function


  List<int> arranged = numbers.toSet().toList();

  // using reversed we will reverse the numbers from the list 
  arranged = arranged.reversed.toList();

// then printing the arranged number after reversing and removing dublicates

  print(arranged);
}
