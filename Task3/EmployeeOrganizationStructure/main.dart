void main() {
  Manager manager = Manager('Rana Reda', 22, '10 Main St', 'Sales');
  manager.printdetails();

  Worker worker = Worker('shimaa ', 25, '20 Elm St', 60);
  worker.printdetails();
}

class Employees {
  String name;
  int age;
  String address;

  Employees(this.name, this.age, this.address);

  void printdetails() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

class Manager extends Employees {
  String department;

  Manager(String name, int age, String address, this.department)
      : super(name, age, address);

  @override
  void printdetails() {
    super.printdetails();
    print('Department: $department');
  }
}

class Worker extends Employees {
  int hoursWorked;

  Worker(String name, int age, String address, this.hoursWorked)
      : super(name, age, address);

  @override
  void printdetails() {
    super.printdetails();
    print('Hours Worked: $hoursWorked');
  }
}
