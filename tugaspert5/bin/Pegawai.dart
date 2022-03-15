import 'fperson.dart';
import 'Jabatan.dart';

class DosenLB extends Person implements Jabatan {
  int gaji = 2000000;
  int TbhsksLB = 0;
  int TotalLB = 0;
  int Tunjangan = 0;

  DosenLB(String? nama) : super(nama);

  void TbhSKSLB(var tbhskslb) {
    TbhsksLB = tbhskslb;
  }

  void TotalUangLB() {
    TotalLB = gaji + (TbhsksLB * 40000) + Tunjangan;
  }

  @override
  String jabatan() {
    return 'Dosen LB';
  }
}

class DosenTamu extends Person implements Jabatan {
  int gaji = 0;
  int TbhsksTM = 0;
  int TotalTM = 0;
  int Tunjangan = 50000;

  DosenTamu(String? nama) : super(nama);

  void TbhSKSTM(var tbhskstm) {
    TbhsksTM = tbhskstm;
  }

  void TotalUangTM() {
    TotalTM = gaji + (TbhsksTM * 40000) + Tunjangan;
  }

  @override
  String jabatan() {
    return 'Dosen Tamu';
  }
}

class DosenTetap extends Person implements Jabatan {
  int gaji = 2000000;
  int TbhsksTT = 0;
  int TotalTT = 0;
  int Tunjangan = 50000;

  DosenTetap(String? nama) : super(nama);

  void TbhSKSTT(var tbhskstt) {
    TbhsksTT = tbhskstt;
  }

  void TotalUangTT() {
    TotalTT = gaji + (TbhsksTT * 40000) + Tunjangan;
  }

  @override
  String jabatan() {
    return 'Dosen Tetap';
  }
}

class Staff extends Person implements Jabatan {
  int gaji = 2000000;
  int Tunjangan = 50000;
  int TotalST = 0;
  int Kehadiran = 0;
  int Cuti = 12;

  Staff(String? nama) : super(nama);

  void JumlahKHD(var msk) {
    Kehadiran = msk;
  }

  void JumlahCuti(var jth) {
    if (jth == 'yes' || jth == 'Yes') {
      Cuti = Cuti - 1;
    }
  }

  void TotalUangStaff() {
    TotalST = gaji + (Tunjangan * Kehadiran);
  }

  @override
  String jabatan() {
    return 'Staff';
  }
}
