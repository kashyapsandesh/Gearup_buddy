void main() {
  //Number DataTypes: (int, double,num)

  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50; //num is a super class of both int and double
  num num4 = 50.4;

// For Sum
  num sum = num1 + num2 + num3 + num4;

// Printing Info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

//Round Double Value To 2 Decimal Places
  double prize = 1130.2232323233233; // valid.
  print(prize.toStringAsFixed(2));

  //String and MultiLine String

//SingleLine String
  String name = 'Sandesh';
  print(name);

//Multiline String
  String myplace = '''
Nepal is a beautiful country. 
Nepal is multi cultured and hinduistm country.
''';
  print(myplace);

  //Special Character In String
  // \n-> (New Line) and \t-> (Tab)
  String specialChar = "Hello\nI am Sandesh.\tHow are you?";
  print(specialChar);

  //Create A Raw String In Dart
  /*Raw string in dart starts from r or R and ends with any character except new line */
  String rawStr = r"This is \ a raw string.";
  print(rawStr);

  //Type Conversion In Dart
  //Converting String to Integer
  String newnum = '1';
  print(newnum.runtimeType); //This gives which types of data type it's Used
  int changeStringtoInt = int.parse(newnum);
  print(changeStringtoInt.runtimeType);

  //Converting int to double
  int x = 19;
  print(x.runtimeType);
  double y = x.toDouble();
  print(y.runtimeType);

  //classwork->Convert String to int and Convert double to int

//List

//The list holds multiple values in a single variable.
//It is also called arrays.
//If you want to store multiple values without creating multiple variables, you can use a list.

  List<String> names = ["Sandesh", "Shankar", "Arjun"];

  print("First Name: " + names[0]);
  print("Second Name: " + names[1]);
  print("Third Name: " + names[2]);

  int nameslength = names.length;
  print(nameslength);

  // Sets
  //An unordered collection of unique items is called set in dart. You can store unique data in sets.
  Set<String> weekday = {
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  };
  print(weekday);

//Maps:

//In Dart, a map is an object where you can store data in key-value pairs. 
//Each key occurs only once, but you can use same value multiple times.
  Map<String, String> myDetails = {
    'name': 'Sandesh Ghimire',
    'address': 'Nepal',
    'fathername': 'Arjun Dai'
  };

  print(myDetails['name']);
}
