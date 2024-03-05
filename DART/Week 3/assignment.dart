import 'dart:io';

void main() {
  // Prompt the user to enter an integer
  stdout.write('Enter an integer: ');

  // Read user input from stdin
  String? input = stdin.readLineSync();

  // Parse the input string into an integer
  try {
    int number = int.parse(input!);

    if (number < 10) {
      print('Your number is less than 10');
    } else if (number == 10) {
      print('Your number is equal to 10');
    } else {
      print('Your number is greater than 10');
    }
    
  } catch (e) {
    print('Invalid input. Please enter a valid integer.');
  }
}
