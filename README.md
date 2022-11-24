# Pertanyaan Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu?Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON dapat dilakukan tanpa membuat model. Implementasinya dapat dilakukan dengan jsonDecode(). Namun, hal ini tidak lebih baik daripada membuat model sebelum melakukan data JSON karena
pengolahan data menjadi tidak mudah, tidak terstruktur, dan tidak efisien. Selain itu, kita juga harus memproses respons JSON secara manual setelah menerima respons dari web service.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- RichText = Menampilkan teks dengan beberapa style yang diterapkan
- Checkbox = Menampilkan pilihan kepada pengguna
- TextSpan = Mengumpulkan beberapa properti
- ElevatedButton = Menampilkan shadow pada button dan elevation meningkat ketika button ditekan
- Flexible = Turunan widget dapat diatur dan fleksibel

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Membuat model sesuai dengan data JSON yang akan diambil ketika pemanggilan web service
- Membuat fungsi untuk mengambil data dari web service, lalu iterasi semua data akan ditampilkan ke aplikasi menggunakan FutureBuilder.
- Melakukan pengambilan data dari URL dan pengembalian respon menggunakan http.get
- Mengubah data JSON menjadi objek model dan akan menampilkan data ke widget yang telah ditentukan

## Cara Implementasi
- Membuat folder page dan model. Untuk folder page berisi data_budget.dart, form.dart, mywatchlist_detail.dart, dan mywatchlist_page.dart. 
Sedangkan untuk folder model berisikan model_budget.dart dan mywatchlist.dart
- Menambahkan tombol navigasi pada drawer untuk halaman mywatchlist
- Membuat file dart untuk model mywatchlist
- Menambahkan kode `http: any` pada dependencies pubspec.yaml dan melakukan `flutter packages get` di terminal
- Membuat file fetch.dart untuk melakukan pengambilan data dari URL tugas 3 dengan menggunakan http.get
- Membuat file mywatchlist_page.dart untuk menampilkan button yang berisi judul-judul film
- Membuat file mywatchlist_detail.dart untuk menampilkan detail film
- Melakukan add commit push ke github