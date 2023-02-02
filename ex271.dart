import 'user_input.dart';

class Bai271 {
  void resolve() {
    //Bài 271: Xóa các phần tử có chỉ số k trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int k = inputOpt.enterInput('Nhap chi so k:');

    List<int> list2 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] != k) {
        list2.add(list[i]);
      }
    }
    print(list2);
  }
}
