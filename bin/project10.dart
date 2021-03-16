abstract class ValuableVehicleBluprint {
  double tax;
}

class Vehicle {
  double length;
  double maxSpeed;

  displayDetails() {
    print('maxSpeed $maxSpeed');
    print('length $length');
  }
}

class Automobile extends Vehicle implements ValuableVehicleBluprint {
  String engineNumber;

  @override
  double tax;
}

class Vessel extends Vehicle implements ValuableVehicleBluprint {
  String imoNumber;

  @override
  double tax;
}

class Bicycle extends Vehicle {
  Bicycle() {}

  Bicycle.fromDatabase() {}
  bool hasLight;

  @override
  displayDetails() {
    print('length $length');
  }
}

void main(List<String> arguments) {
  var myAutomobile = Automobile();
  myAutomobile.maxSpeed = 172;
  myAutomobile.length = 5;
  myAutomobile.displayDetails();
  myAutomobile.tax;
  //
  var myBicycle = Bicycle();

  myBicycle.displayDetails();
}
