import 'dart:collection';

class Dosen {
  final String nama;
  int hariAbsen;
  Dosen(this.nama, [this.hariAbsen = 0]);
  void tambahHariAbsen() {
    hariAbsen++;
  }

  @override
  String toString() {
    return '$nama (Hari Absen: $hariAbsen)';
  }
}

class AbsensiQueue {
  final Queue<Dosen> queue = Queue<Dosen>();
  void tambahDosen(String nama) {
    queue.add(Dosen(nama));
    print('$nama ditambahkan ke dalam antrian absensi.');
  }

  void prosesAbsensiHarian() {
    for (var dosen in queue) {
      dosen.tambahHariAbsen();
    }
  }

  void tampilkanAntrian() {
    if (queue.isEmpty) {
      print('Tidak ada dosen yang absen.');
    } else {
      print('Antrian Absensi Dosen:');
      for (var dosen in queue) {
        print(dosen);
      }
    }
  }

  void hapusDosen(String nama) {
    queue.removeWhere((dosen) => dosen.nama == nama);
    print('$nama dihapus dari antrian absensi.');
  }
}

void main() {
  AbsensiQueue absensiQueue = AbsensiQueue();
// Menambahkan dosen yang absen ke antrian
  absensiQueue.tambahDosen('Dr. Ahmad');
  absensiQueue.tambahDosen('Prof. Budi');
  absensiQueue.tambahDosen('Dr. Chandra');
// Menampilkan antrian absensi
  absensiQueue.tampilkanAntrian();
  print('---');
// Simulasi absensi harian
  absensiQueue.prosesAbsensiHarian();
  absensiQueue.tampilkanAntrian();
  print('---');
// Menambahkan lebih banyak dosen
  absensiQueue.tambahDosen('Dr. Dian');
  absensiQueue.tambahDosen('Prof. Eko');
  absensiQueue.tampilkanAntrian();
  print('---');
// Simulasi absensi harian
  absensiQueue.prosesAbsensiHarian();
  absensiQueue.tampilkanAntrian();
  print('---');
// Menghapus dosen dari antrian
  absensiQueue.hapusDosen('Dr. Ahmad');
  absensiQueue.hapusDosen('Dr. Chandra');
  absensiQueue.tampilkanAntrian();
}
