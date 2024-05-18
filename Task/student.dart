class Mahasiswa {
  String nama = "";
  String kelas = "";
  int umur = 0;
  String nim = "";
  List<int> nilaiRataRata = [];
  List<Matkul> listMatkul = [];

  Mahasiswa(String nama, int umur, String kelas, String nim,
      List<int> nilaiRataRata) {
    this.nama = nama;
    this.umur = umur;
    this.kelas = kelas;
    this.nim = nim;
    this.nilaiRataRata = nilaiRataRata;
  }

  void setMatkul(
      String namaMatkul, int sks, String dosen, String ruangan, String jadwal) {
    Matkul matkul = Matkul(namaMatkul, sks, dosen, ruangan, jadwal);
    listMatkul.add(matkul);
  }

  void delMatkul(
      String namaMatkul, int sks, String dosen, String ruangan, String jadwal) {
    Matkul matkul = Matkul(namaMatkul, sks, dosen, ruangan, jadwal);
    listMatkul.removeWhere((element) => element == matkul);
  }

  double hitungNilaiAkhir() {
    int sum = 0;
    for (int result in nilaiRataRata) {
      sum += result;
    }
    return sum / nilaiRataRata.length;
  }
}

class Matkul {
  String namaMatkul = "";
  int sks = 0;
  String dosen = "";
  String ruangan = "";
  String jadwal = "";

  Matkul(
      String namaMatkul, int sks, String dosen, String ruangan, String jadwal) {
    this.namaMatkul = namaMatkul;
    this.sks = sks;
    this.dosen = dosen;
    this.ruangan = ruangan;
    this.jadwal = jadwal;
  }
}

void main() {}
