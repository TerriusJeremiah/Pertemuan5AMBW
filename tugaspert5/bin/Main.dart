import 'Jabatan.dart';
import 'Pegawai.dart';
import 'fperson.dart';
import 'Mahasiswa.dart';

void main() {
  Mahasiswa mh1 = Mahasiswa('Terrius', 10);
  print('Nama : ${mh1.nama}');
  print('Jumlah SKS : ${mh1.sks}');
  print('Jabatan : ${mh1.jabatan()}');
  print('Status : ${mh1.status()}');

  print("-------------------------------------");

  DosenLB pg1 = DosenLB('Umar');
  print('Nama : ${pg1.nama}');
  print('Jabatan : ${pg1.jabatan()}');

  print("-------------------------------------");

  DosenTamu pg2 = DosenTamu('Herman');
  print('Nama : ${pg2.nama}');
  print('Jabatan : ${pg2.jabatan()}');
}
