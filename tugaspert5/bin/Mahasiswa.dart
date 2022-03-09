import 'fperson.dart';
import 'Jabatan.dart';

class Mahasiswa extends Person implements Jabatan {
  int sks = 0;

  Mahasiswa(String? nama, sks) : super(nama);

  @override
  String jabatan() {
    return 'Mahasiswa';
  }

  @override
  String status() {
    return 'aktif';
  }
}
