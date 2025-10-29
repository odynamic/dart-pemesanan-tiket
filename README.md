# Sistem Pemesanan Tiket Konser

## Identitas

Nama: Dyah Ghaniya Putri  
Shift: F/A  
Praktikum Pemrograman Mobile 
Tugas 5 – Studi Kasus Sederhana Dart  

## Konsep Pemesanan Tiket
Program ini merupakan studi kasus sederhana menggunakan bahasa Dart.  
Aplikasi ini dibuat untuk mensimulasikan proses pemesanan tiket konser dengan beberapa jenis tiket dan stok terbatas.  
Proyek ini ditujukan sebagai penerapan dasar-dasar pemrograman seperti penggunaan variabel, list, map, perulangan, percabangan, dan fungsi.

---

## Penjelasan Studi Kasus

Studi kasus ini berfokus pada pembuatan program sederhana yang mensimulasikan proses pemesanan tiket konser.  
Beberapa pembeli melakukan pemesanan, sistem mengecek stok, lalu menampilkan hasil pembelian, sisa stok, serta total pendapatan dari seluruh transaksi.  
Kasus ini dipilih karena sederhana namun cukup untuk menggambarkan penerapan logika dasar dan pengelolaan data pada bahasa Dart.

---

## Alur Program

1. Sistem menyimpan data jenis tiket berupa nama, harga, dan stok awal.  
2. Beberapa pembeli melakukan pemesanan tiket dengan jumlah tertentu.  
3. Program memeriksa ketersediaan stok:
   - Jika stok mencukupi, transaksi berhasil dan stok berkurang.
   - Jika stok tidak cukup, sistem menampilkan pesan gagal.  
4. Setelah seluruh pesanan diproses, sistem menampilkan sisa stok, jumlah tiket terjual, dan total pendapatan keseluruhan.

---

## Penjelasan Singkat Program

- **prosesPemesanan()**  
  Memproses daftar pembeli dan memeriksa ketersediaan stok untuk setiap jenis tiket.

- **tampilkanStok()**  
  Menampilkan stok terbaru setelah transaksi selesai.

- **tampilkanLaporan()**  
  Menghitung jumlah tiket yang terjual dan total pendapatan dari semua penjualan.

Struktur data menggunakan Map dan List agar data mudah dikelola dan diakses selama program berjalan.  
Setiap fungsi memiliki peran terpisah agar logika program lebih rapi dan mudah dipahami.

---

## Konsep yang Diterapkan

- Variabel dan Map untuk menyimpan data tiket.  
- List untuk menyimpan data pemesanan.  
- Percabangan `if-else` untuk validasi kondisi stok.  
- Perulangan `for` untuk memproses setiap pemesanan.  
- Fungsi terpisah agar struktur program lebih teratur dan mudah dibaca.

---
