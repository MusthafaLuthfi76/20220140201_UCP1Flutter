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
                      'assets/images/jefri.jpeg',
                    ),
            ),
            const SizedBox(width: 10),
            SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Selamat Datang',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                      Text('Admin', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  const SizedBox(width: 150),
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
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/promoo.png',
            width: double.infinity,
            height: 160,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 24),

        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.1,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                elevation: 4,
                shadowColor: Colors.black26,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.videogame_asset_rounded, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                'Data Piket',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  ),
                ],
              ),
                ),
                ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                elevation: 4,
                shadowColor: Colors.black26,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.dashboard_customize_rounded, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                'Data Pelanggan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  ),
                ],
              ),
            ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
