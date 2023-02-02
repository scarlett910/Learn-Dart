import 'user_input.dart';

class Bai281 {
  void resolve() {
    //Bài 281: Hãy đưa chẵn về đầu, lẻ về cuối, phần tử 0 nằm giữa mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    list.add(0);
    print(list);

    final List<int> list2 = [];
    final List<int> list3 = [];
    final List<int> list4 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] % 2 == 0 && list[i] != 0) {
        list2.add(list[i]);
      } else if (list[i] == 0) {
        list3.add(list[i]);
      } else {
        list4.add(list[i]);
      }
    }

    list2.addAll(list3);
    list2.addAll(list4);
    print(list2);
  }
}
