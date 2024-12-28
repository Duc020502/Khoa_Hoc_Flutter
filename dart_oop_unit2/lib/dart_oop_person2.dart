import 'package:dart_oop_unit2/dart_oop_person.dart';

class Person extends PersonSample {
  String? id;
  String? name;
  int? _birthYear;
  Person({required this.id, required this.name, required int birthYear}) {
    this.birthYear = birthYear;
  }
  int get birthYear => _birthYear!;
  set birthYear(int birthYear) => _birthYear = birthYear;
  @override
  int getAge() {
    // TODO: implement getAge
    DateTime now = DateTime.now();
    int yearNow = now.year;
    int tuoi = yearNow - birthYear;
    return tuoi;
  }

  @override
  void getInfor() {
    // TODO: implement getInfor
    print("Tôi tên là: $name");
    print("Năm nay tôi: " + getAge().toString());
  }
}
