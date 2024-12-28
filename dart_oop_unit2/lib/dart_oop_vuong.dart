import 'package:dart_oop_unit2/dart_oop_chu_nhat.dart';

class Vuong extends ChuNhat {
  Vuong({required double canh})
      : super(
            chieuDai: canh,
            chieuRong:
                canh); // Gọi constructor của lớp cha với chiều dài và chiều rộng bằng nhau

  @override
  void getInfor() {
    print('Cạnh: ${chieuDai}');
    print('Diện tích: ${tinhDienTich()}');
    print('Chu vi: ${tinhChuVi()}');
  }
}
