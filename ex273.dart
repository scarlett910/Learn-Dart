class Bai273 {
  void resolve() {
    //Bài 273: Xóa tất cả các số âm trong mảng
    List<int> index = [-1, 2, -3, -4, 5, 6, 7, -8];

    List<int> index2 = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] > 0) {
        index2.add(index[i]);
      }
    }
    print(index2);
  }
}
