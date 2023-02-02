import 'user_input.dart';

class Bai274 {
  void resolve() {
    //Bài 274: Xóa tất cả các số chẵn trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    List<int> list2 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] % 2 != 0) {
        list2.add(list[i]);
      }
    }
    print(list2);
  }
}
