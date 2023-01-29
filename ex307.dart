class Bai307 {
  void resolve() {
    //Bài 307: Tạo mảng b chỉ chứa giá trị lẻ từ mảng a
    List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<int> b = [];

    for (int i = 0; i < a.length; i++) {
      if (a[i] % 2 != 0) {
        b.add(a[i]);
      }
    }
    print(b);
  }
}
