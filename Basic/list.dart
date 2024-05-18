void main() {
  // // membuat list buah
  List buah = ["apel", "mangga", "pisang", "durian", 78];
  // // index :  0        1         2          3

  // print(buah);
  // print(buah[0]);
  // print(buah[3]);
  // print("aku makan " + buah[1] + " dan " + buah[2]);
  // print(buah[4]);

  // //  untuk memanggil atau menggunaakn element dalam list kita menggunakan perintah
  // // nama_list[ index ];

  List<String> hewan = ["ular", "buaya", "singa"];
  // //   ^
  // //   |
  // // generic type ( ciri ciranya diampit dengan tanda < dan >)

  List<int> nilaiUjian = [67, 75, 80, 81];

  // print(nilaiUjian[0] + nilaiUjian[1]);

  // // menambahkan element di list menggunakan method add
  // // ketika menambah elemen akan berada dismping kanan
  // nilaiUjian.add(90);
  // hewan.add("kucing");
  // hewan.add("gajah");

  // print(nilaiUjian);
  // print(hewan);

  // // menghapus element terakihi menggunakan removeLast
  // nilaiUjian.removeLast();

  // // menghapus element bedasrakan index menggunakan removeAt
  // nilaiUjian.removeAt(1);

  // // menghapus element dgn menyebutkan secara langsung menggunakan remove
  // nilaiUjian.remove(80);

  // hewan.removeAt(1);

  print(nilaiUjian);
  print(hewan);

  // print(hewan.length);
  // print(hewan.reversed);
  // print(hewan.first);
  // print(hewan.firstOrNull);
  // print(hewan.isNotEmpty);
  // print(hewan.isEmpty);

  // menampilkan satu persatu element di list
  for (String element in hewan) {
    print("hewan " + element);
  }
}
