//Step 1

class Person {
  String _name;
  
  Person(this._name);

  String get name => _name;
  set name(String value) => _name = value;

}

class Engine {
  String _model; 
  int _speed; 

  Engine(this._model, this._speed); 

  String get model => _model;
  set model(String value) => _model = value;

  int get speed => _speed;
  set speed(int value) => _speed = value;

  void displayEngineInfo() {
    print('Engine model: $_model \nMax Speed: $_speed km/h');
  }
}

class Car {
  String _brand; 
  String _model; 
  Person _owner; 
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine); 

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get model => _model;
  set model(String value) => _model = value;

  Person get owner => _owner;
  set owner(Person value) => _owner = value;

  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;

  void displayCarInfo() {
    print('Brand: $_brand \nModel: $_model');
    print('Owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Driving at ${_engine.speed} km/h');
  }
}

//Step 2

class Honda extends Car {
  String _color; 

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine); 
  
  String get color => _color;
  set color(String value) => _color = value;

  @override
  void run() {
    print('ความเร็วในการขับ 120 km/h');
  }

  @override
  void displayCarInfo() {
    super.displayCarInfo();
    print('Color: $_color');
  }
}

//Test
void main() {
  Person suchakree = Person('Suchakree Longji');
  Engine hondaEngine = Engine('Hybid', 190);
  Car hondaCivic = Car('Honda', 'Accord', suchakree, hondaEngine);
  Honda myHonda = Honda('Honda', 'Accord', suchakree, hondaEngine, 'Red');

  print('Car Information:');
  hondaCivic.displayCarInfo();
  hondaCivic.run();

  print('\nMy Honda Information:');
  myHonda.displayCarInfo();
  myHonda.run();
}
