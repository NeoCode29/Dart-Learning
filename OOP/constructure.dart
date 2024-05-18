class person {
  String nama = "";
  int umur = 0;
  String gender = "";

  // membuat construktor harus sesuai dengan nama class
  // contoh membuat construktor :
  person(String namaOrang, int umurOrang, String genderOrang) {
    // // namaOrang , umurOrang, genderOrang adalah parameter
    nama = namaOrang;
    umur = umurOrang;
    gender = genderOrang;
  }

  void perkenalan() {
    print(
        "Halo, nama saya $nama, saya berumur $umur tahun, dan saya adalah seorang $gender");
  }
}

void main() {
  // // tanpa construktor
  // var adel = person();
  // var nuril = person();

  // adel.nama = "adel";
  // adel.umur = 20;
  // adel.gender = "wanita";
  // adel.perkenalan();

  // nuril.nama = "nuril";
  // nuril.perkenalan();

  // print(nuril.nama);

  // // dengan construktor
  var adel = person("adel", 18, "wanita");
  adel.perkenalan();

  var nuril = person("nuril", 18, "wanita");
  nuril.perkenalan();
}
