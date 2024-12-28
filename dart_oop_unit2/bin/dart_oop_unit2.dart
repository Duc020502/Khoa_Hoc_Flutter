import 'package:dart_oop_unit2/dart_oop_chu_nhat.dart';
import 'package:dart_oop_unit2/dart_oop_person2.dart';
import 'package:dart_oop_unit2/dart_oop_unit2.dart';
import 'package:dart_oop_unit2/dart_oop_vuong.dart';

void main(List<String> arguments) {
  Student stu1 = Student(
      studentCode: "4601104034",
      name: "Minh Đức",
      mathScores: 9,
      literatureScores: 8,
      englishScores: 7,
      birthdate: DateTime(1999, 10, 15),
      phonenumber: '0123456789');
  stu1.studentInfo();
  print("Điểm trung bình của ${stu1.name} là:${stu1.calculateAverageScore()}");
  String classify = stu1.classifyStudent();
  print("Học Lực của ${stu1.name} là:$classify");
  ChuNhat cn1 = ChuNhat(chieuDai: 8, chieuRong: 5);
  cn1.getInfor();
  Vuong v1 = Vuong(canh: 7);
  v1.getInfor();
  Person p1 = Person(id: "01", name: "Minh Đức", birthYear: 2002);
  p1.getInfor();
}
