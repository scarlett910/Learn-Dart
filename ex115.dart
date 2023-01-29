import 'dart:io';

class Bai115 {
  void resolve() {
    //Bài 115: Viết chương trình nhập họ tên, điểm toán, điểm văn của 1 học sinh. Tính điểm trung bình và xuất ra kết quả
    print('Nhập họ tên: ');
    String? name = stdin.readLineSync()!;

    print('Nhập điểm toán: ');
    int? diemToan = int.parse(stdin.readLineSync()!);

    print('Nhập điểm văn: ');
    int? diemVan = int.parse(stdin.readLineSync()!);

    double diemTB = (diemToan + diemVan) / 2;
    print('Điểm TB của HS $name là $diemTB');
  }
}
