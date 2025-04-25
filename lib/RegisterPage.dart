import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/images.png'),
                  width: 50,
                  height: 50,
              ),
              Text('Daftar Akun Baru', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Text("Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  label: Text('Masuk'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    textStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                  // Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const LoginPage()),
                  // );
                },
                child: Text('Belum Punya akun? Daftar Sekarang Sekarang!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}