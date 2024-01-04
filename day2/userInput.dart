import 'dart:io';
void main(){
  /**
   * User Input In Dart
Instead of writing hard-coded values, you can give input to the computer.
 It will make your program more dynamic. 
 You must import the package import 'dart:io'; for user input.
   */

   print("Enter name:");
  String? name  = stdin.readLineSync();
  print("The entered name is ${name}");

/**
 * Integer User Input
You can take integer input to get a numeric value from the user without the decimal point. E.g. 10, 100, -800 etc.
 */

  print("Enter number:");
  int? number = int.parse(stdin.readLineSync()!);
  print("The entered number is ${number}");

  /**
   * Floating Point User Input
You can use float input if you want to get a numeric value from the user with the decimal point. E.g. 10.5, 100.5, -800.9 etc.
   */
   print("Enter a floating number:");
  double numbers = double.parse(stdin.readLineSync()!);
  print("The entered num is $numbers");

}