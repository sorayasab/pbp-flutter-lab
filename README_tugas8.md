# Pertanyaan Tugas 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
- Navigator.push = menampilkan page baru di atas page yang sedang ditampilkan.
- Navigator.pushReplacement = mengganti page yang sedang ditampilkan dengan page baru.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Drawer = sebagai navigasi untuk berpindah ke page lain
- Form = membuat form
- TextButton = menampilkan button
- ListTile = menampilkan informasi dalam sebuah list
- DropdownButtonHide: membuat DropdownButtonHide

### Sebutkan jenis-jenis event yang ada pada Flutter
- onPressed: event terjadi ketika widget ditekan
- onSaved: event terjadi ketika ada penyimpanan data
- onChanged: event terjadi ketika ada perubahan data pada widget

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator bekerja seperti stack. Isi stack tersebut adalah route. 
Ketika pengguna ingin memuat suatu halaman, dilakukan push ke dalam stack sehingga item teratas merupakan 
route tersebut. Jika ingin kembali ke halaman sebelumnya, dilakukan pop untuk mengeluarkan route teratas 
(halaman yang sedang dibuka) sehingga route teratas yang baru adalah halaman sebelumnya.

### Cara mengimplementasi 
- Membuat drawer terpisah di drawer.dart agar tidak perlu meng-copy drawer ke setiap file. 
- Menambahkan halaman form dengan membuat form.dart yang memuat widget form berupa title, nominal, 
type, date. 
- Membuat class budget pada model_budget.dart untuk menyimpan data pada list
- Membuat data_budget.dart untuk menampilkan data-data yang telah tersimpan.
- Melakukan add commit push ke GitHub
