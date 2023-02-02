import 'user_input.dart';

class Bai132 {
  void listEvenNumber(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        print(index[i]);
      }
    }
  }

  void resolve() {
    // Bài 132: Viết hàm liệt kê các giá trị chẵn trong mảng 1 chiều các số nguyên
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listEvenNumber(list, n);
  }
}
