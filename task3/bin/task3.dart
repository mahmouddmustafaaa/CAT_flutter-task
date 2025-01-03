import 'dart:io';

// in the task there are 3 inputs the number of entered letters, text which will encrypted and the encryption key
// while writing the code i made the number of letters entered automaticlly counted using text.length code
// and the entered text will be in variable called : encryptedtext
//the shift value is the integer encryption key which is the number of letters to rotate



// we will start by informing the human error checks and defining the encryption code before start using the encryption by the user (backend process)
// defining the text and shift 


String caesarCipherEncryption(String text, int shift) {
  // shift used to  stay within the alphabet range which is 26 letter
  shift = shift % 26; // to check that it will be 26 letter exact

//string buffer used to know the number of letters entered
  StringBuffer encryptedText = StringBuffer();

// defining each letter with the length number to know the position of each letter using its number
  for (int i = 0; i < text.length; i++) {
    String char = text[i];

//mahmoud

// reducing human error and check if the entered text is letter
    if (char.contains(RegExp(r'[a-zA-Z]'))) {
      int asciiOffset =
          char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90 ? 65 : 97;
// 65 or 97 to import also the uppercase and lowercase letters

//starting encyption code by shifting the letters with the shift
      int encryptedCharCode =
          ((char.codeUnitAt(0) - asciiOffset + shift) % 26) + asciiOffset;
      encryptedText.write(String.fromCharCode(encryptedCharCode));
    } else {
// no change done (no encryption)
      encryptedText.write(char);
    }
  }
  return encryptedText.toString();
}

// the front-end process
void main() {
// accepting the text which will be encypted by the user
  print('Enter the text to encrypt:');
  String? text = stdin.readLineSync();

// the shift value for the encryption
  print('Enter the shift value:');
  String? shiftInput = stdin.readLineSync();

// human error check for empty input
  if (text != null && shiftInput != null && int.tryParse(shiftInput) != null) {
    int shift = int.parse(shiftInput);
// applying the encryption
    String encryptedText = caesarCipherEncryption(text, shift);

// printing the encryption
    print('\nOriginal Text: $text');
    print('Encrypted Text: $encryptedText');
  } else {
    print('Invalid input. Please enter valid text and shift value.');
  }
}


// made by eng: mahmoud mustafa mahmoud