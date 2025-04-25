import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage(
                      'assets/images/images.png',
                    ),
            ),
            const SizedBox(width: 10),
            SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Selamat Datang',style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),),
                      Text('Admin', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  const SizedBox(width: 170),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.white,)),
                    ],
                  )
            
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                  image: AssetImage('assets/images/promoo.png',),
                    width: 300,
                    height: 200,
              ),
            ),
            Column(
              
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false,
                  );
                },
                icon: Icon(Icons.check_circle_outline),
                label: Text('Selesaikan Pesanan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
