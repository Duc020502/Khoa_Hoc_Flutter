//Viết một hàm kiểm tra số đó chẵn hay lẻ, Kiểm tra xem số đó là chẵn hay lẻ dùng if...else
import 'dart:io';

void checkNumber1({required int number}) {
  if (number % 2 == 0) {
    print(number.toString() + " Là Số Chẵn");
  } else
    print(number.toString() + " Là Số Lẻ");
}

//Viết một hàm kiểm tra số đó là chẵn hay lẻ, kiểm tra xem số đó là chẵn hay lẻ dùng switch…case
void checkNumber2({required int number}) {
  switch (number % 2) {
    case 0:
      print(number.toString() + " Là Số Chẵn");
      break;
    case 1:
      print(number.toString() + " Là Số Lẻ");
      break;
  }
}

//1. Cho số nguyên = 8, tính n!
void checkNumber3({required int number}) {
  int giaiThua = 1;
  for (int i = 1; i <= number; i++) {
    giaiThua *= i;
  }
  print(number.toString() + "! = $giaiThua");
}

//2. In tất cả các số nguyên dương lẻ nhỏ hơn 25.
void checkNumber4() {
  print("Sử dung for");
  stdout.write("Số Lẻ nhỏ hơn 25: ");
  for (int i = 0; i < 25; i++) {
    if (i % 2 == 1) stdout.write(i.toString() + " ");
  }
  print("");
  print("Sử dụng for...in");
  List<int> number = [];
  for (int i = 0; i < 25; i++) {
    number.add(i);
  }
  stdout.write("Số Lẻ nhỏ hơn 25: ");
  for (int index in number) {
    if (index % 2 == 1) stdout.write(index.toString() + " ");
  }
  print("");
}

//Từ 1 đến 50 in ra các số mà tổng số đó không vượt quá 50.
void tongBeHon50() {
  for (int i = 1; i <= 50; i++) {
    int x = i;
    stdout.write("$i ");
    for (int y = 1; y <= 50; y++) {
      if (i != y) {
        x += y;
        if (x <= 50) {
          stdout.write("+ $y ");
          continue;
        } else {
          print("");
          break;
        }
      }
    }
  }
}

//Tính tổng các số từ 1 đến 15, Số nào là số chẵn thì in ra màn hình.
void tongLayChan() {
  int sum = 0;
  stdout.write("Tổng chẳn: ");
  for (int i = 1; i <= 15; i++) {
    sum += i;
    if (sum % 2 == 0) stdout.write("$sum, ");
  }
  print("");
}

/*
Nhập từ bàn phím 3  số tự nhiên 
+ Sau đó tính trung bình cộng và in ra, 
+ Hiển thị dãy số đó theo thứ tự tăng dần
*/
void baiTapList() {
  print("Nhập vào 3 số tự nhiên");

  String? input = stdin.readLineSync();
  if (input != null) {
    List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();
    int sum = 0;
    for (int i in numbers) {
      sum += i;
    }
    double aver = sum / (numbers.length);
    stdout.write("3 Số Tự nhiên: ");
    stdout.write(numbers);
    print("");
    print("Trung Bình Cộng:$aver");
    numbers.sort((a, b) => a.compareTo(b));
    print(numbers);
  }
}

// Lấy thông tin người dùng từ một Map đã cho trước
void infoUser() {
  Map<String, String> userInfo = {
    "User_name": "Minh Đức",
    "Home_town": "Tây Ninh",
    "Phone_number": "0394512345",
    "Age": "20",
  };
  print(userInfo["User_name"]);
  print(userInfo["Home_town"]);
  print(userInfo["Phone_number"]);
  print(userInfo["Age"]);
}

// Từ 1 đến 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400.
void tongLonHon400() {
  print("Tổng các số bé hơn 400:");
  for (int i = 2; i <= 1000; i += 2) {
    int sum = i;
    if (i <= 400) stdout.write("$i ");
    for (int y = 2; y <= 1000; y += 2) {
      if (i != y) {
        sum += y;
        if (sum <= 400) {
          stdout.write(" + $y");
          continue;
        } else {
          print("");
          break;
        }
      }
    }
  }
}

// Từ. 1 đến 10000, Viết chương trình đếm xem có bao nhiêu chữ số chia hết cho 3 , bao nhiêu số chia hết cho 5
void chiaHet() {
  List<int> chiaHetCho3 = [];
  List<int> chiaHetCho5 = [];
  for (int i = 1; i <= 10000; i++) {
    if (i % 3 == 0) chiaHetCho3.add(i);
    if (i % 5 == 0) chiaHetCho5.add(i);
  }
  int chiaHet3 = chiaHetCho3.length;
  int chiaHet5 = chiaHetCho5.length;
  print("có $chiaHet3 số chia hết cho 3 ");
  print("có $chiaHet5 số chia hết cho 5 ");
}

//Cho một list : List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];  In ra tổng các số chia hết cho 3.
void tongChiaHetCho3() {
  List<int> list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  int sum = 0;
  for (int i = 0; i < list5.length; i++) {
    if (list5[i] % 3 == 0) {
      sum += list5[i];
    }
  }
  print("Tổng Các Số chia hết cho 3 là $sum.");
}

/*
Cho thông tin biểu diễn dưới sạng sau : 
var classInformation = {
 “id”: 12,
 “name”: “Báo Flutter 1.2”,
 “description”: “ Lớp học lập trình Flutter,  hot line: 0349582808”
 };
 Yêu cầu: In ra số hotline của lớp học trên.
 */
void baiTapMap() {
  Map<String, Object> classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter, hot line: 0349582808"
  };

  // Bước 1: Lấy phần description
  String description = classInformation["description"] as String ?? "";

  // Bước 2: Dùng biểu thức chính quy (RegEx) để tìm số điện thoại
  RegExp regex = RegExp(r'\d{9,11}'); // Tìm dãy số từ 9 đến 11 chữ số
  Match? match = regex.firstMatch(description);

  if (match != null) {
    String hotline = match.group(0)!; // Lấy số hotline từ kết quả match
    print("Số hotline của lớp học là: $hotline");
  } else {
    print("Không tìm thấy số hotline.");
  }
}
