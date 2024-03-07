void main() {
  Car car = Car("Nexon", 2020, 2408.0, true);

  print('Model: ${car.getModel()}');
  print('Year: ${car.getyear()}');
  print('Mileage: ${car.getMileage()}');

  car.updateMileage(4000.0);
  print('Updated Mileage: ${car.getMileage()}');
}

class Car {
  String _model;
  int _year;
  double _mileage;
  bool _isAutomatic;
  Car(this._model, this._year, this._mileage, this._isAutomatic);
  String getModel() {
    return _model;
  }

  int getyear() {
    return _year;
  }

  double getMileage() {
    return _mileage;
  }

  bool getisautomatic() {
    return _isAutomatic;
  }

  void updateMileage(double newMileage) {
    _mileage = newMileage;
  }
}
