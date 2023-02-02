import 'user_input.dart';

class Bai115 {
  void resolve() {
    //Bài 115: Viết chương trình nhập họ tên, điểm toán, điểm văn của 1 học sinh. Tính điểm trung bình và xuất ra kết quả
    UserInput inputOpt = UserInput();
    int name = inputOpt.enterInput('Nhập họ tên: ');
    int diemToan = inputOpt.enterInput('Nhập điểm toán: ');
    int diemVan = inputOpt.enterInput('Nhập điểm văn: ');

    double diemTB = (diemToan + diemVan) / 2;
    print('Điểm TB của HS $name là $diemTB');
  }
}
