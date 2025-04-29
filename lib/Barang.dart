import 'package:_20220140201_ucp1flutter/DetailBarangPage.dart';
import 'package:flutter/material.dart';

class BarangPage extends StatefulWidget {
  final String email;
  final String nama;
  const BarangPage({
    required this.email,
    required this.nama,
    super.key
    });

  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
  String? selectedJenisTransaksi;
  String? selectedJenisBarang;
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        tanggalController.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Pendataan Barang', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Tanggal Transaksi'),
                const SizedBox(height: 8),
                TextFormField(
                  controller: tanggalController,
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  decoration: InputDecoration(
                    hintText: 'Tanggal Transaksi',
                    prefixIcon: const Icon(Icons.calendar_today),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  validator: (value) => value == null || value.isEmpty ? 'Tanggal harus diisi' : null,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedJenisTransaksi,
                  decoration: InputDecoration(
                    hintText: 'Jenis Transaksi',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Barang Masuk', child: Text('Barang Masuk')),
                    DropdownMenuItem(value: 'Barang Keluar', child: Text('Barang Keluar')),
                  ],
                  onChanged: (value) => setState(() => selectedJenisTransaksi = value),
                  validator: (value) => value == null ? 'Pilih jenis transaksi' : null,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedJenisBarang,
                  decoration: InputDecoration(
                    hintText: 'Jenis Barang',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Carrier', child: Text('Carrier')),
                    DropdownMenuItem(value: 'Sleeping Bag', child: Text('Sleeping Bag')),
                    DropdownMenuItem(value: 'Sepatu', child: Text('Sepatu')),
                    DropdownMenuItem(value: 'Tenda', child: Text('Tenda')),
                  ],
                  onChanged: (value) => setState(() => selectedJenisBarang = value),
                  validator: (value) => value == null ? 'Pilih jenis barang' : null,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Jumlah Barang'),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: jumlahController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Jumlah Barang',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) => value == null || value.isEmpty ? 'Jumlah harus diisi' : null,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Harga Satuan'),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: hargaController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              prefixText: 'Rp. ',
                              hintText: 'Harga Satuan',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) => value == null || value.isEmpty ? 'Harga harus diisi' : null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int jumlah = int.parse(jumlahController.text);
                        int hargaSatuan = int.parse(hargaController.text);
                        int totalHarga = jumlah * hargaSatuan;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailBarangPage(
                              email: widget.email,
                              nama: widget.nama,
                              tanggal: tanggalController.text,
                              jenisTransaksi: selectedJenisTransaksi!,
                              jenisBarang: selectedJenisBarang!,
                              jumlahBarang: jumlah,
                              hargaSatuan: hargaSatuan,
                              totalHarga: totalHarga,
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text('Submit'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
