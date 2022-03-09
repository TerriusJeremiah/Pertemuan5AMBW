import 'fperson.dart';
import 'Jabatan.dart';

class DosenLB extends Person implements Jabatan {
  DosenLB(String? nama) : super(nama);

  @override
  String jabatan() {
    return 'Dosen LB';
  }
}

class DosenTamu extends Person implements Jabatan {
  DosenTamu(String? nama) : super(nama);

  @override
  String jabatan() {
    return 'Dosen Tamu';
  }
}

class DosenTetap extends Person implements Jabatan {
  DosenTetap(String? nama) : super(nama);

  @override
  String jabatan() {
    return 'Dosen Tetap';
  }
}

class Staff extends Person implements Jabatan {
  Staff(String? nama) : super(nama);

  @override
  String jabatan() {
    return 'Staff';
  }
}
