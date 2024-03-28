void main() {
  //task 01: Create a list of names and print all names using list.
  List names = ["Ali", "Bilal", "Qasim", "Taber", "Shammas"];
  print(names);
  print("----------------------------");

  //task 02: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  days.addAll([
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ]);
  print(days);
print("----------------------------");
  //task 03:  Create a list of Days and remove one by one from the end of list.
  List listOfDays = [
    "Monday",
    "Tuseday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Sunday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Saturday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Friday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Thurday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Wednesday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Tuesday removed
  listOfDays.removeLast();
  print("updated list = $listOfDays"); //Mondat removed
  print("----------------------------");

  //task no 04:  Create a list of numbers & write a program to get the smallest & greatest number from a list.
  List<int> numbers = [5, 2, 9, 1, 7, 3, 8, 4, 6];
  int smallest = numbers.reduce((current, next) => current < next ? current : next);
  int greatest = numbers.reduce((current, next) => current > next ? current : next);
  print("The smallest number is: $smallest");
  print("The greatest number is: $greatest");
  print("----------------------------");

  //task 05: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  Map myMap = {"Name": "Muhammad Umar Khan", "Phone": "0123456789"};
  print(myMap.keys.where((keys) => keys.length == 4));
  print("----------------------------");

  //task 06: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
  Map world = {
    "Pakistan": {
      "Capital city": "Karachi",
      "Currency": "PKR",
      "Language": "Urdu"
    },
    "India": {
      "Capital city": "New Dehli",
      "Currency": "INR",
      "Language": "Hindi"
    },
    "China": {
      "Capital city": "Beijing",
      "Currency": "CNY",
      "Language": "Chinease"
    }
  };
  String countryKey = "Pakistan";
  if(world.containsKey(countryKey)){
    Map<String,String> dataOfCountry = world[countryKey];
    String? countryLanguage = dataOfCountry["Language"];
    String? countryCapital = dataOfCountry["Capital city"];
    print("Language of the $countryKey is $countryLanguage");
    print("Capital city of the $countryKey is $countryCapital");
  }else{
    print("Map does not contain any country named $countryKey");
  }
  print("----------------------------");

  //task no 07
  Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};
expenses.addAll({"fri" : 5000.0});
print(expenses);
print("----------------------------");

//task no 08:  Remove all false values from below list by using removeWhere or retainWhere property.
List<Map<String, dynamic>> usersEligibility = [
{'name': 'John', 'eligible': true},
{'name': 'Alice', 'eligible': false},
{'name': 'Mike', 'eligible': true},
{'name': 'Sarah', 'eligible': true},
{'name': 'Tom', 'eligible': false},
];
usersEligibility.retainWhere((e) =>e["eligible"] == true);
print(usersEligibility);
print("----------------------------");

//task no 09: Given a list of integers, write a dart code that returns the maximum value from the list.
 List<int> numberss = [3, 8, 1, 6, 2];

  int maxValue = numberss.reduce((value, element) => value > element ? value : element);
  print('The maximum value in the list is: $maxValue');
  print("----------------------------");

//task no 10:  Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates.
// The order of elements in the new list should be the same as in the original list.
List strings = ["ali","sami","ali","hamza","salman","hamza","sami","salman"];
List newList = strings.toSet().toList();
print(newList);
print("----------------------------");

//task no 11: Write a Dart code that takes in a list and an integer n as parameters.
// The program should print a new list containing the first n elements from the original list.
List list = [1,2,3,4,5,6,7,8,9];
int n = 4;
List newlist = list.take(n).toList();
print(newlist);
print("----------------------------");

//task no 12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order.
// The original list should remain unchanged.
List originalNames = ["ali","sami","hassam","abdullah","akmal","iqbal"];
List reversedNames = originalNames.reversed.toList();
print("The original list : $originalNames");
print("The reversed list : $reversedNames");
print("----------------------------");

//task no 14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order.
//The original list should remain unchanged.

List l1 = [22,3,55,32,11,27];
List l2 = List.from(l1);
l2.sort();
print("The original list is : $l1");
print("The sorted list is : $l2");
print("----------------------------");

// task no 15:  Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers.
//The program should take in the original list as a parameter and print a new list containing only the positive numbers.
List integers = [1,-1,2,-2,3,-3,4,-4,5,-5];
List posIntegers = integers.where((element) => element>=0).toList();
print("The original list is : $integers");
print("The filtered list is : $posIntegers");
print("----------------------------");

//task no 16:  Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers.
//The program should take in the original list as a parameter and print a new list containing only the even numbers.
List number = [1,2,3,4,5,6,7,8,9,10];
List evenNumbers = number.where((element) => element % 2 == 0).toList();
print("The original List is : $number");
print("The even numbers list is : $evenNumbers");
print("----------------------------");

//task no 17:  Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared.
//The program should take in the original list as a parameter and print the new list.
List a = [1,2,3,4,5];
List b = a.map((e) => e*e).toList();
print("The original list is : $a");
print("The squared list is : $b");
print("----------------------------");

//task no 18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true.
//Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".
Map<String,dynamic> person = {"name": "john","age": 25, "isStudent" : true};
if(person["age"] > 18 && person["isStudent"] == true ){
  print("Eligible");
}else{
  print("Not Eligible");
}
print("----------------------------");

//task no 19:  Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock.
// If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
Map<String,dynamic> product = {"name" : "pencil", "quantity": 10, "price": "10Rs"};
if(product["quantity"] > 0){
  print("In stock");
}else{
  print("Out of Stock");
}
print("----------------------------");

//task no 20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true.
//Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".
Map<String,dynamic> car = {"brand":"Toyota", "color": "red", "isSedan" : true};
if(car["color"] == "red" && car["isSedan"] == true){
print("Match");
}else{
  print("No match");
}
print("----------------------------");

//task no 21:  Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin.
// If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin". 
Map user = {"name": "anis", "isAdmin": true, "active": false};
if(user["isAdmin"]== true && user["active"] == true){
print("Active Admin");
}else{
  print("Not Active Admin");
}
print("----------------------------");

//task no 22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart.
// Print "Product found" if it exists, otherwise print "Product not found".
Map shoppingCart = {"Banana": 4, "apricot": 5, "cabbage": 2, "apple": 7};
if(shoppingCart.keys.contains("apple")){
print("product found");
}else{
  print("product not found");
}
print("----------------------------");

//task no 13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list.
// The order of elements in the new list should be the same as in the original list.
List integerNumbers = [1,3,2,4,5,3,5,2,1];
List uniqueNumbers =  integerNumbers.toSet().toList();
print("The original lList is :$integerNumbers");
print("The unique elements list is : $uniqueNumbers");
print("----------------------------");
}

