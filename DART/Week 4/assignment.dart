import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class AnimalBase implements Animal {
  @override
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Subclass inheriting from AnimalBase
class Dog extends AnimalBase {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Class that implements an interface
class Cat implements Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

// Class that overrides an inherited method
class Cow extends AnimalBase {
  @override
  void makeSound() {
    print('Cow moos');
  }
}

// Method to read data from a file and initialize an instance
Animal initializeFromFile(String filename) {
  // Dummy implementation: reads animal type from file and returns an instance
  String animalType = File(filename).readAsStringSync().trim().toLowerCase();
  switch (animalType) {
    case 'dog':
      return Dog();
    case 'cat':
      return Cat();
    case 'cow':
      return Cow();
    default:
      throw ArgumentError('Unknown animal type');
  }
}

// Method demonstrating the use of a loop
void demonstrateLoop() {
  for (int i = 0; i < 5; i++) {
    print('Loop iteration $i');
  }
}

void main() {
  // Create instances and demonstrate features
  Animal dog = Dog();
  Animal cat = Cat();
  Animal cow = Cow();
  
  dog.makeSound();
  cat.makeSound();
  cow.makeSound();
  
  Animal animalFromFile = initializeFromFile('animal.txt');
  animalFromFile.makeSound();
  
  demonstrateLoop();
}
