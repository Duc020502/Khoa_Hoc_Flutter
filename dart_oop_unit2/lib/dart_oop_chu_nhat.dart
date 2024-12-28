class ChuNhat {
  double? chieuRong;
  double? chieuDai;
  ChuNhat({required this.chieuDai, required this.chieuRong});
  double tinhChuVi() {
    double chuVi = (chieuDai! + chieuRong!) * 2;
    return chuVi;
  }

  double tinhDienTich() {
    double dienTich = this.chieuDai! * this.chieuRong!;
    return dienTich;
  }

  void getInfor() {
    print("Chiều dài hình chữ nhật: $chieuDai");
    print("Chiều rộng hình chữ nhật: $chieuRong");
    print("Diện tích hình chữ nhật: " + tinhDienTich().toString());
    print("Chu vi hình chữ nhật: " + tinhChuVi().toString());
  }
}
