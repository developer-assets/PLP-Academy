void main() {
  //working with integers
  int age = 957;
  print("My age is $age years");

  //working with doubles
  double height = 684;
  print("My height is $height cm");

  //working with strings
  String name = "Patrick Obama";
  print("My name is $name");

  //working with booleans
  bool isMarried = false;
  print("I am $isMarried");

  //working with lists
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numbers);
  print(numbers.length);
  print(numbers[0]);
  numbers.forEach((element) {
    print(element);
  });

  //working with maps
  Map<String, String> map = {
    "name": "Patrick",
    "age": "957",
    "height": "684",
    "isMarried": "false",
  };
  print(map);
  print(map["name"]);
  map.forEach((key, value) {
    print("$key: $value");
  });
}
