import 'package:flutter/material.dart';
import 'package:counter_7/page/data_budget.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/model/model_budget.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  int nominal = 0;
  String type = 'Pemasukan' ;
  DateTime date = DateTime.now();
  List<String> listType = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: const DrawerPage(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // NEWWWW
            children: [
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Judul",
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _title = value!;
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      _title = value!;
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nominal",
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? nominalNew) {
                    setState(() {
                      if (nominalNew != '') nominal = int.parse(nominalNew!);
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? nominalNew) {
                    setState(() {
                      if (nominalNew != '') nominal = int.parse(nominalNew!);
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              ListTile(
                title: Text(date.toString().substring(0, 10)),
                leading: TextButton.icon(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2024)
                    ).then((date) {
                      setState(() {
                        this.date = date!;
                      });
                    });
                  },
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: const Text('Tanggal'),
                ),
              ),
              ListTile(
                trailing: DropdownButton(
                  value: type,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: listType.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  hint: const SizedBox(
                    width: 150,
                    child: Text(
                      "Pilih Jenis",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onChanged: (String? typeNew) {
                    setState(() {
                      type = typeNew!;
                    });
                  },
                ),
              ),
              TextButton(
                // ignore: sort_child_properties_last
                  child: const Text(
                    "Simpan",
                     style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var data = Budget(title: _title, nominal: nominal, date: date, type: type);
                      Budget.dataBudget.add(data);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const DataBudgetPage()),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}