// To practice copy the code in https://dartpad.dev

void main() {
  mutableVariables();
  inmutableVariables();
  funciones();
  clases();
  enumeradores();
}

//--------------------------------------

void mutableVariables() {
  String name = 'Daniel';
  print('Nombre: $name');

  int age = 31;
  print('Edad: $age');

  double height = 1.69;
  print('Altura: $height');

  bool isStudent = false;
  print('Es estudiante? $isStudent');

  var lastName = 'Salhuana';
  print('Apellido: $lastName');

  var isMarried = true;
  print('Esta casado? $isMarried');

  //Opcionales
  int? children;
  print('Hijos: $children');

  // Dinamicos
  dynamic day = 'Miercoles';
  day = 27;
  print('Hoy es: $day');

  // Arrays
  List information = ['Daniel', 'Salhuana'];
  information.add(31);
  print('Datos personales: $information');

  List<String?> names = ['Daniel', 'Pedro', 'Juan'];
  names.add(null);
  print('Nombres: $names');

  var lastNames = ['Salhuana', 'Quispe', 'Bravo'];
  print('Apellidos: $lastNames');
}

//--------------------------------------

void inmutableVariables() {
  // Debe indicar un valor antes de su ejecución
  const institute = 'Instituto continental';
  print(institute);

  // El valor puede ser agregado en tiempo de ejecución
  final today = DateTime.now();
  print(today);
}

//--------------------------------------

int sum(int a, int b) {
  return a + b;
}

String getNameTradicionalForm() {
  return 'Daniel1';
}

String getNameOneLine() => 'Daniel2';

String get nameAsParameter => 'Daniel3';

bool validIsPair(double value) {
  if (value % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

bool validIsPairOneLine(double value) => value % 2 == 0 ? true : false;

bool validIsPairOneLineShorter(double value) => value % 2 == 0;

void funciones() {
  var result = sum(2, 4);
  print('resultado de la suma: $result');

  var name = getNameTradicionalForm();
  print('Nombre: $name');

  name = getNameOneLine();
  print('Nombre: $name');

  name = nameAsParameter;
  print('Nombre: $name');

  var number = 2.0;
  var isPair = validIsPair(number);
  print('Es número $number es par: $isPair');

  number = 3;
  isPair = validIsPairOneLine(number);
  print('Es número $number es par: $isPair');

  number = 4;
  isPair = validIsPairOneLineShorter(number);
  print('Es número $number es par: $isPair');
}

//--------------------------------------

class User {
  String name;
  String lastName;

  // Opcion 1
  User(this.name, this.lastName);

  String get fullName => '$name $lastName';
}

class User2 {
  String name;
  String? lastName;

  // Opcion 2
  // parametros dentro del { } son opcionales por defecto
  User2(this.name, {this.lastName});

  String get fullName => '$name $lastName';
}

class User3 {
  String name;
  String lastName;

  // Opcion 3
  // al agregar required dentro del { } el parametro es obligatorio
  User3({required this.name, required this.lastName});

  String get fullName => '$name $lastName';
}

//La Herencia se implementa con el extends
class Teacher extends User {
  String course;

  //Constructor
  Teacher(name, lastName, this.course) : super(name, lastName);

  // Otro constructor con valores por defecto
  Teacher.mobile()
      : course = 'mobile',
        super('Daniel', 'Salhuana');
}

void clases() {
  User userOne = User('Daniel', 'Salhuana');
  User2 userTwo = User2('Javier');
  // Cuando los parametros son agregados { } no interesa el orden
  User3 userThree = User3(lastName: 'Oh', name: 'Angelica');

  print(userOne.fullName);
  print(userTwo.fullName);
  print(userThree.fullName);

  Teacher teacherOne = Teacher('Juan', 'Perez', 'Web');
  print(teacherOne.fullName);
  print(teacherOne.course);

  Teacher teacherTwo = Teacher.mobile();
  print(teacherTwo.fullName);
  print(teacherTwo.course);
}

//--------------------------------------

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

void enumeradores() {
  List<Day> allDays = Day.values;
  print(allDays);

  Day day = Day.wednesday;

  switch (day) {
    case Day.monday:
    case Day.tuesday:
    case Day.wednesday:
    case Day.thursday:
    case Day.friday:
      print("Es un día laborable.");
      break;
    case Day.saturday:
    case Day.sunday:
      print("Es un día de fin de semana.");
      break;
  }
}
