import 'package:_20220140201_ucp1flutter/HomePage.dart';
import 'package:flutter/material.dart';

class DetailBarangPage extends StatelessWidget {
  final String tanggal;
  final String jenisTransaksi;
  final String jenisBarang;
  final int jumlahBarang;
  final int hargaSatuan;
  final int totalHarga;

  const DetailBarangPage({
    super.key,
    required this.tanggal,
    required this.jenisTransaksi,
    required this.jenisBarang,
    required this.jumlahBarang,
    required this.hargaSatuan,
    required this.totalHarga,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              const Icon(Icons.check_circle, color: Colors.green, size: 100),
              const SizedBox(height: 16),
              const Text('Data Berhasil Disimpan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Tanggal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(tanggal),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Jenis Transaksi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(jenisTransaksi),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Jenis Barang', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(jenisBarang),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Jumlah Barang', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(jumlahBarang.toString()),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Harga Satuan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('Rp. $hargaSatuan'),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Harga', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('Rp. $totalHarga'),
                ],
              ),
              const SizedBox(height: 60),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                ),
                child: const Text('Selesai', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}