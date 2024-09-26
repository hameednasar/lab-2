import 'dart:io';

void main() {
  // Asking the user for their age
  print("Please enter your age:");

  // Using null safety to handle nullable input
  String? input = stdin.readLineSync();

  // Null-aware check and exception handling
  try {
    if (input == null || input.isEmpty) {
      throw 'No input received. Please enter a valid age.';
    }

    // Try to parse the input to an integer
    int age = int.parse(input);

    if (age < 0 || age > 150) {
      throw 'Please enter a realistic age between 0 and 150.';
    }

    int yearsLeft = 100 - age;

    if (yearsLeft > 0) {
      print("You have $yearsLeft years left until you turn 100.");
    } else {
      print("You are already 100 years old or older!");
    }
  } catch (e) {
    // Handling the exception and showing a user-friendly message
    print("Error: $e");
  }
}
