import 'user_input.dart';

class Bai273 {
  void resolve() {
    //Bài 273: Xóa tất cả các số âm trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    List<int> list2 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] > 0) {
        list2.add(list[i]);
      }
    }
    print(list2);
  }
}
