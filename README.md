# Pertanyaan Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless Widget merupakan widget yang statenya tidak dapat dirubah (*immutable*) setelah widget dibuat atau bersifat statis.
Sedangkan Stateful Widget merupakan widget yang statenya dapat diubah (*mutable*) setelah widget dibuat atau bersifat dinamis.

###Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text = untuk menampilkan apapun pada *screen*.
- AppBar = Sebuah widget yang berada pada bagian paling atas screen yang berisi toolbar dan action button lainnya.
- Scaffold = Sebuah widget untuk mengatur layout widget-widget didalamnya.
- FloatingActionButton = Sebuah widget untuk membuat button yang men-*trigger action*. 
- Row = Sebuah widget untuk memposisikan child-nya secara horizontal.
- Column = Sebuah widget untuk memposisikan child-nya secara vertikal.
- Center = Sebuah widget untuk memusatkan child-nya.

###Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState berfungsi untuk memberitahu program bahwa *internal state* dari sebuah state objek telah berubah. 
Hal ini menyebabkan program akan merendering ulang dan menampilkan perubahan state yang terjadi. 
setState tidak bisa digunakan pada stateless widget karena bersifat statis. Pada proyek ini, 
variabel yang terdampak dengan setState adalah _counter dan typeofnumber yang berada dalam class class _MyHomePageState.

###Jelaskan perbedaan antara const dengan final.
const dan final merupakan *keyword* yang digunakan untuk membuat *immutable variable*. Apabila objek atau *value* telah 
diinisiasi ke *variable* tersebut, maka *variable* tidak dapat dirubah lagi. <br />
**Perbedaan antara const dan final**
final merupakan *runtime-constant* yang artinya objek atau value diinisiasi saat runtime alih-alih waktu kompilasi 
yang dimiliki untuk keyword const.

###Cara Mengimplementasi
1. **Membuat program Flutter baru dengan nama `counter_7`**
```
flutter create counter_7
```

2. **Menambahkan *variable* `typeofnumber` untuk menampilkan angka bertipe genap atau ganjil pada *page*.**
Mula-mula inisiasi "GENAP" pada *variable* `typeofnumber` karena pertama kali `_counter` bernilai 0.
```
...
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String typeofnumber = "GENAP";
...
```

3. **Membuat fungsi `setbilangan()`.** <br />
Fungsi ini dibuat untuk menampilkan apakah angka bertipe genap atau ganjil.
```
void setbilangan(){
    if(_counter % 2 == 0){
      typeofnumber = "GENAP";
    }
    else {
      typeofnumber = "GANJIL";
    }
  }
```

4. **Implementasi genap berwarna biru dan ganjil berwarna merah**
```
...
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
    Text(
        '$typeofnumber',
        style: TextStyle(color: typeofnumber == "GENAP"? Colors.blue : Colors.red)
    ),
...
```
5. **Membuat fungsi `_decrementCounter()`** <br />
Implementasi fungsi pengurangan kurang lebih sama dengan `_incrementCounter`. 
Hanya saja ketika angka menampilkan angka nol, pengurangan tidak bisa dilakukan. 
Fungsi `setbilangan()` dipanggil untuk meng-update tipe dari bilangan.
```
void _decrementCounter() {
    setState((){
      if (_counter != 0 ) _counter--;
      setbilangan();
    });
  }
```
6. **Memanggil fungsi `setbilangan()` pada fungsi `_incrementCounter()`**
```
void _incrementCounter() {
   ...
   setbilangan();
   ...
   }
```
7. **Mengimplementasi `tombol -`.**
```
...
FloatingActionButton(
    onPressed: _decrementCounter,
    //tooltip: 'Decrement',
    child: const Icon(Icons.remove),
),
...
```
8. **Hide `tombol -` ketika `_counter` bernilai 0**
```
...
Visibility(
    visible: _counter != 0 ? true : false,
    child: FloatingActionButton(
    onPressed: _decrementCounter,
    //tooltip: 'Decrement',
    child: const Icon(Icons.remove),
),
),
...
```


