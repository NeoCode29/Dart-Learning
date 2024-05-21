class person {
  // atribute
  String nama = "";
  int umur = 0;
  String gender = "";

  // construktor
  person(String namaOrang, int umurOrang, String genderOrang) {
    nama = namaOrang;
    umur = umurOrang;
    gender = genderOrang;
  }

  // method
  void perkenalan() {
    print(
        "Halo, nama saya $nama, saya berumur $umur tahun, dan saya adalah seorang $gender");
  }

  void identitas() {
    print("nama : $nama");
    print("umur : $umur");
    print("gender : $gender");
  }
}

void main() {
  // membuat object
  var kresna = person("kresna", 18, "laki-laki");

  // kresna.nama = "kresna";
  // kresna.umur = 18;
  // kresna.gender = "pria";

  kresna.identitas();
  kresna.perkenalan();
}
