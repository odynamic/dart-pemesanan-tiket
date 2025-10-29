void main() {
  var tiket = {
    'VIP': {'harga': 500000, 'stok': 10},
    'Reguler': {'harga': 250000, 'stok': 20},
    'Festival': {'harga': 150000, 'stok': 30},
  };

  var pesanan = [
    {'nama': 'Gibran', 'jenis': 'VIP', 'jumlah': 3},
    {'nama': 'Agni', 'jenis': 'Festival', 'jumlah': 4},
    {'nama': 'Irham', 'jenis': 'Reguler', 'jumlah': 5},
    {'nama': 'Abimana', 'jenis': 'VIP', 'jumlah': 2},
    {'nama': 'Ute', 'jenis': 'Reguler', 'jumlah': 10},
    {'nama': 'Chicco', 'jenis': 'VIP', 'jumlah': 7},
  ];

  print('=== Sistem Pemesanan Tiket Konser ===\n');
  prosesPemesanan(tiket, pesanan);
  tampilkanStok(tiket);
  tampilkanLaporan(tiket, pesanan);

  print('\nProses selesai. Terima kasih.');
}

void prosesPemesanan(Map<String, Map<String, int>> tiket, List<Map<String, dynamic>> pesanan) {
  print('Daftar Pemesanan:\n');

  for (var data in pesanan) {
    var nama = data['nama'] as String;
    var jenis = data['jenis'] as String;
    var jumlah = data['jumlah'] as int;

    if (!tiket.containsKey(jenis)) {
      print('$nama: tipe tiket "$jenis" tidak tersedia.');
      continue;
    }

    var stok = tiket[jenis]!['stok']!;
    var harga = tiket[jenis]!['harga']!;
    var total = harga * jumlah;

    if (stok >= jumlah) {
      tiket[jenis]!['stok'] = stok - jumlah;
      print('$nama membeli $jumlah tiket $jenis (Rp$total).');
    } else {
      print('$nama gagal, stok $jenis tersisa $stok tiket.');
    }
  }
  print('');
}

void tampilkanStok(Map<String, Map<String, int>> tiket) {
  print('Stok Tiket Tersisa:');
  tiket.forEach((jenis, data) {
    print('- $jenis: ${data['stok']} tiket (Rp${data['harga']})');
  });
  print('');
}

void tampilkanLaporan(Map<String, Map<String, int>> tiket, List<Map<String, dynamic>> pesanan) {
  var totalPendapatan = 0;
  var penjualan = {'VIP': 0, 'Reguler': 0, 'Festival': 0};

  for (var data in pesanan) {
    var jenis = data['jenis'] as String;
    var jumlah = data['jumlah'] as int;
    if (penjualan.containsKey(jenis) && tiket.containsKey(jenis)) {
      var harga = tiket[jenis]!['harga']!;
      penjualan[jenis] = penjualan[jenis]! + jumlah;
      totalPendapatan += harga * jumlah;
    }
  }

  print('Laporan Penjualan:');
  penjualan.forEach((jenis, jumlah) {
    print('- $jenis: $jumlah tiket terjual');
  });
  print('\nTotal pendapatan: Rp$totalPendapatan');
}
