import 'package:test2/test2.dart' as test2;

void main() {

  List<int> numbers = [10, 20, 23, 45, 96, 10, 21, 22, 21];

  // Removeing dublicates useing toset function

  List<int> arranged = numbers.toSet().toList();

  // reversing the list 

  arranged = arranged.reversed.toList();

  print(arranged);
}
