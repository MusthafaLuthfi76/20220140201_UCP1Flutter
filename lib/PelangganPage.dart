import 'package:_20220140201_ucp1flutter/DetailPelangganPage.dart';
import 'package:flutter/material.dart';

class PelangganPage extends StatefulWidget {
  const PelangganPage({super.key});

  @override
  State<PelangganPage> createState() => _PelangganPageState();
}

class _PelangganPageState extends State<PelangganPage> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final noHpController = TextEditingController();
  final alamatController = TextEditingController();
  final provinsiController = TextEditingController();
  final kodePosController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _simpanDataPelanggan() {
  if (_formKey.currentState!.validate()) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPelangganPage(
          nama: namaController.text,
          email: emailController.text,
          noHp: noHpController.text,
          alamat: alamatController.text,
          provinsi: provinsiController.text,
          kodePos: kodePosController.text,
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Data Pelanggan', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nama Cust', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  hintText: 'Nama Cust',
                ),
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama harus diisi';
                    }
                    return null;
                  },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            ),
                            hintText: 'Email',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email harus diisi';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('No Hp', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: noHpController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            ),
                            hintText: 'No. HP',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nomor HP harus diisi';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Alamat', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(
                controller: alamatController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  hintText: 'Alamat',
                ),
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Alamat harus diisi';
                    }
                    return null;
                  },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Provinsi', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: provinsiController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            ),
                            hintText: 'Provinsi',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Provinsi harus diisi';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Kode Pos', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: kodePosController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            ),
                            hintText: 'Kode Pos',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Kode Pos harus diisi';
                            }
                            return null;
                          },
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _simpanDataPelanggan,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Simpan'),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                    namaController.clear();
                    emailController.clear();
                    noHpController.clear();
                    alamatController.clear();
                    provinsiController.clear();
                    kodePosController.clear();
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}