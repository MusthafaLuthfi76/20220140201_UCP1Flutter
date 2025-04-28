import 'package:flutter/material.dart';

class Gudang extends StatefulWidget {
  const Gudang({super.key});

  @override
  State<Gudang> createState() => _GudangState();
}

class _GudangState extends State<Gudang> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tugasController = TextEditingController();
  DateTime? selectedDate;
  List<Map<String, dynamic>> _listTugas = [];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Piket Gudang', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama Anggota'),
              SizedBox(height: 8),
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  hintText: 'Nama',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              Text('Pilih Tanggal'),
              SizedBox(height: 8),
              InkWell(
                onTap: () => _selectDate(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today, size: 20),
                      SizedBox(width: 10),
                      Text(
                        selectedDate == null
                            ? 'Pilih Tanggal'
                            : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Tugas Piket'),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _tugasController,
                      decoration: InputDecoration(
                        hintText: 'Tugas Piket',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (){
                      if (_tugasController.text.isNotEmpty && selectedDate != null) {
                        setState(() {
                          _listTugas.add({
                            'nama': _namaController.text,
                            'tanggal': selectedDate,
                            'tugas': _tugasController.text,
                          });
                          _tugasController.clear();
                          selectedDate = null;
                        });
                      }
                    },
                    child: Text('Tambah',style: TextStyle(color: Colors.white),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Daftar Tugas Piket',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 16),
              _listTugas.isEmpty
                  ? SizedBox(height : 350, child: Center(child: Text('Belum ada Data')))
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _listTugas.length,
                      itemBuilder: (context, index) {
                        final tugas = _listTugas[index];
                        return Card(
                          child: ListTile(
                            title: Text(tugas['tugas']),
                            subtitle: Text(
                                '${tugas['nama']} - ${tugas['tanggal'].day}/${tugas['tanggal'].month}/${tugas['tanggal'].year}'),
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
