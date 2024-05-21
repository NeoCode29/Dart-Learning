void main() {
  String nama = "kresna";
  int umur = 18;
  bool isMenikah = false;

  // tanpa menggunakan generic type sehingga tipe data element dapat berbeda
  List identitas = ["kresna", 18, false];
  List hewan = ["harimau", "singa", "ular"];

  // // dengan menggunakan generic type sehingga tipe data element harus sama
  List<String> buah = ["pisang", "mangga", "jeruk"];
  List<int> nilaiUjian = [34, 65, 80, 75];
  // //   index        :  0  , 1 , 2, 3

  // // properti list
  // print(buah.length);
  // print(buah.reversed);
  // print(buah.first);
  // print(nilaiUjian.first);

  // print(buah[1]);
  // print(nilaiUjian[3] + nilaiUjian[1]);

  // // menampilkan semua isi list
  print(buah);

  // // mengganti element  list
  // buah[1] = "durian";
  // buah[0] = "apel";

  // // menambahkan data ke list
  // buah.add("kelengkeng");
  // buah.add("anggur");

  // menghapus element di list
  buah.remove("mangga");
  buah.removeAt(0);

  print(buah);
}
