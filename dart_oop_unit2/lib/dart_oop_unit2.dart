class Student {
  String? studentCode;
  String? name;
  double? mathScores;
  double? literatureScores;
  double? englishScores;
  // ignore: unused_field
  DateTime? _birthDate;
  // ignore: unused_field
  String? _phoneNumber;

  // ignore: use_function_type_syntax_for_parameters
  Student(
      {required this.studentCode,
      required this.name,
      required this.mathScores,
      required this.literatureScores,
      required this.englishScores,
      required DateTime? birthdate,
      required String? phonenumber}) {
    this.birthDate = birthdate;
    this.phoneNumber = phonenumber!;
  }

  DateTime get birthDate => _birthDate!;
  set birthDate(date) => _birthDate = date;
  String get phoneNumber => _phoneNumber!;

  set phoneNumber(String phoneNumber) {
    RegExp regExp = RegExp(r'^[0-9]{10}$');
    if (regExp.hasMatch(phoneNumber)) {
      _phoneNumber = phoneNumber;
    } else {
      throw Exception('Số điện thoại không hợp lệ! Vui lòng nhập đúng 10 số.');
    }
  }

  Map getStudentInfo() {
    Map<String, Object> mapStudentInfo = {
      "student_code": "$studentCode",
      "name_student": "$name",
      "math_scores": "$mathScores",
      "literature_scores": "$literatureScores",
      "english_scores": "$englishScores",
      "birth_date": "$_birthDate",
      "phone_number": "$_phoneNumber"
    };
    return mapStudentInfo;
  }

  void studentInfo() {
    print("Mã Số Học Sinh:" + this.getStudentInfo()["student_code"]);
    print("Tên học Sinh:" + this.getStudentInfo()["name_student"]);
    print("Điển Môn Toán:" + this.getStudentInfo()["math_scores"]);
    print("Điểm Môn Văn:" + this.getStudentInfo()["literature_scores"]);
    print("Điểm Môn Anh:" + this.getStudentInfo()["english_scores"]);
    print("Ngày Sinh:" + this.getStudentInfo()["birth_date"]);
    print("Số Điện Thoại:" + this.getStudentInfo()["phone_number"]);
  }

  double calculateAverageScore() {
    double aver = (mathScores! + literatureScores! + englishScores!) / 3;
    return aver;
  }

  String classifyStudent() {
    if (calculateAverageScore() < 3)
      return "Yếu";
    else if (calculateAverageScore() >= 3 && calculateAverageScore() < 5)
      return "Kém";
    else if (calculateAverageScore() >= 5 && calculateAverageScore() <= 6)
      return "Trung Bình";
    else if (calculateAverageScore() > 6 && calculateAverageScore() <= 8)
      return "Khá";
    else if (calculateAverageScore() > 8 && calculateAverageScore() <= 10)
      return "Giỏi";
    else
      return "False";
  }
}
