import 'package:flutter/material.dart';

//variable, Types & Null Safety
var name = 'John Doe'; // String
var age = 30; // int
var isActive = true; // bool

int year = 2026; // int
String country = 'Thailand'; // String
double height = 1.75; // double

const String appName = 'My Flutter App'; //Constant String
const double pi = 3.14159; // Constant double

final String city = 'Bangkok'; // Final String
final int population = 10000000; // Final int

// Null Safety
//String nonNullableString; // Non-nullable String
String? nullableString; //Nullable String

// Arrow function with no return value
int subtract(int a, int b) => a - b;

void greet(String name) {
  print('Hello, $name!');
}

void sayHello() => print('Hello World!');

// Functions
int add(int a, int b) {
  return a + b;
}

// Arrow function with a return value
int multiply(int a, int b) => a * b;

// Corrections
List<String> fruits = ['Apple', 'Banana', 'Cherry']; // list of Strings
final Set<int> numbers = {1, 2, 3, 4, 5}; // Set of integers

Map<String, int> scores = {'Alice': 90, 'Bob': 85, 'Charlie' : 95}; // Map of String keys and integer

void main(){

  // if statements
  if (age >= 18) {
    print("$name is adult.");
  } else {
    print("$name is minor.");
  }

  //for loop
  for (String fruit in fruits) {
    print("I like $fruit.");
  }

  // while loop
  int count = 0;
  while (count < 5) {
    print("Count: $count");
    count++;
  }

  //print("Hello, $name! You are $age years old.");
  //print("Sum of 5 and 3 is: ${add(5,3)}");
  //print("Difference of 5 and 3 is: ${subtract(5, 3)}");
  //print("Produce of 5 and 3 is: ${multiply(5, 3)}");
  //greet("Alice");
  //sayHello();
}