import 'Jabatan.dart';
import 'Pegawai.dart';
import 'fperson.dart';
import 'Mahasiswa.dart';
import 'dart:io';

void main() {
  Mahasiswa mh1 = Mahasiswa('Terrius');

  print('|||Mahasiswa|||');
  stdout.write("Statusmu? (Aktif||Cuti): ");
  var stt = stdin.readLineSync();

  stdout.write("Jumlah SKS: ");
  var tmp = stdin.readLineSync();
  int sks = int.parse(tmp!);

  stdout.write("Nilai IPS: ");
  tmp = stdin.readLineSync();
  double ips = double.parse(tmp!);
  print('');

  mh1.InputSks(sks);
  mh1.InputIps(ips);

  if (stt == 'aktif') {
    print('Status : ${stt}');
    print('Nama : ${mh1.nama}');
    print('Jabatan : ${mh1.jabatan()}');
    print('Jumlah SKS : ${mh1.SKS}');
    print('IPK : ${mh1.IPK}');
  }

  print("-------------------------------------");

  DosenLB pg1 = DosenLB('Umar');
  int tbhsks = sks;
  pg1.TbhSKSLB(tbhsks);
  pg1.TotalUangLB();

  print('Nama : ${pg1.nama}');
  print('Jabatan : ${pg1.jabatan()}');
  print('Jumlah SKS yang diambil : ${pg1.TbhsksLB}');
  print('Jumlah Uang Yang Didapat : ${pg1.TotalLB}');

  print("-------------------------------------");

  DosenTamu pg2 = DosenTamu('Herman');
  pg2.TbhSKSTM(tbhsks);
  pg2.TotalUangTM();

  print('Nama : ${pg2.nama}');
  print('Jabatan : ${pg2.jabatan()}');
  print('Jumlah SKS yang diambil : ${pg2.TbhsksTM}');
  print('Jumlah Uang Yang Didapat : ${pg2.TotalTM}');

  print("-------------------------------------");

  DosenTetap pg3 = DosenTetap('Susilo');
  pg3.TbhSKSTT(tbhsks);
  pg3.TotalUangTT();

  print('Nama : ${pg3.nama}');
  print('Jabatan : ${pg3.jabatan()}');
  print('Jumlah SKS yang diambil : ${pg3.TbhsksTT}');
  print('Jumlah Uang Yang Didapat : ${pg3.TotalTT}');

  print("-------------------------------------");

  Staff pg4 = Staff('Bambang');

  print('|||Staff|||');
  stdout.write("Jumlah masuk pada bulan ini: ");
  tmp = stdin.readLineSync();
  int msk = int.parse(tmp!);

  stdout.write("ingin Mengambil Cuti? (yes/no): ");
  String? jth = stdin.readLineSync();

  pg4.JumlahCuti(jth);
  pg4.JumlahKHD(msk);
  pg4.TotalUangStaff();

  print('Nama : ${pg4.nama}');
  print('Jabatan : ${pg4.jabatan()}');
  print('Absensi : Sudah Absen!');
  print('Sisa Jatah Cuti : ${pg4.Cuti}');
  print('Total Gaji : ${pg4.TotalST}');
}
