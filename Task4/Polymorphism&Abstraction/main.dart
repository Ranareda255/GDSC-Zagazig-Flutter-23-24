void main() {
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound();
  cat.makeSound();
}

abstract class Animal {
  makeSound();
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Dog's Sound is : Woof!");
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print(" Cat's sound is :Meow!");
  }
}
