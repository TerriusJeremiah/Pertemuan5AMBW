import 'fperson.dart';
import 'Jabatan.dart';
import 'dart:io';

class Mahasiswa extends Person implements Jabatan {
  var SKS = 0;
  int stt = 0;
  double IPK = 3.5;

  Mahasiswa(String? nama) : super(nama);

  void InputSks(var sks) {
    if (sks >= 2 && sks <= 20) {
      SKS = sks;
    }
  }

  void InputIps(var ips) {
    IPK = (IPK + ips) / 2;
  }

  @override
  String jabatan() {
    return 'Mahasiswa';
  }
}
