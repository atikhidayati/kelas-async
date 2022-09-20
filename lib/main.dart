void main() async {
  print("Matkul Semester V Teknik Informatika Mobile");
  menu();
  try {
    await order("Mobile User Experinence, Program Perangkat Bergerak");
    print("");
  } catch(error) {
    print(error);
  }

  print ("======================================\n");

  print("Matkul Semester V Teknik Informatika Jaringan");
  menu();
  try {
    await order("Jaringan Nirkabel, Sistem Keamanan Data");
    print("pembeli telah terbeli sayuran nya");
  } catch(e) {
    print(e);
  }
}

listmenu() {
  var listmenu = ['Kecerdasan Buatan', 'Analisis dan Perancangan Sistem', 'Pemodelan dan Simulasi',];
  return listmenu;
}

void menu() {
  var no = 1;
  print("====== Menu ======");
  for (var i in listmenu()) {
    print("${no++}. $i");
  }
  print('');
}

Future<void> order(String pesanan) async {
  print("Matkul Penjurusan Teknik Informatika $pesanan");
  if (listmenu().contains(pesanan)) {
    return Future.delayed(Duration(seconds: 5), () {
      print("\n$pesanan telah selesai dibuat");
      print("penjual memberikan pesanan ke pembeli");
      print("selamat berbelanja\n");
    }
    );
  } else {
    throw ("JADWAL MATKUL PAGI");
  }
}
