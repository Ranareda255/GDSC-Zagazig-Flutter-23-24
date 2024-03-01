import 'dart:io';

void main() {
  print("welcome to our shop");
    print("please , Enter the features of the laptop you need:");
 
  stdin.readLineSync();
 print('Brand: ');
  String brand = stdin.readLineSync()!;
  print('Model: ');
  String model = stdin.readLineSync()!;
  print('RAM (GB): ');
  int RAM = int.parse(stdin.readLineSync()!);

  Laptop lap = Laptop(brand, model, RAM);
  double price = lap.calculatePrice();

  print('The price of the laptop is:$price');
}

class Laptop {
  String brand;
  String model;
  int ram;

  Laptop(this.brand, this.model, this.ram);

  double calculatePrice() {
    double basePrice = 10000; // base price
 
    if (brand.toLowerCase() == 'dell') {
      basePrice += 5000;
    } else if (brand.toLowerCase() == 'hp') {
      basePrice += 4000;
    } else if (brand.toLowerCase() == 'lenovo') {
      basePrice += 3000;
    }

    if (model.toLowerCase() == 'gaming') {
      basePrice += 1000;
    } else if (model.toLowerCase() == 'business') {
      basePrice += 800;
    } else if (model.toLowerCase() == 'education') {
      basePrice += 600;
    }

    if (ram >= 16) {
      basePrice += 500;
    } else if (ram >= 8) {
      basePrice += 300;
    } else if (ram >= 4) {
      basePrice += 100;
    }

    return basePrice;
  }
}
