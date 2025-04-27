import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repassController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  bool obscurePassword = true;
  bool obscureRePassword = true;

  void togglePasswordVisibility() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  void toggleRePasswordVisibility() {
    setState(() {
      obscureRePassword = !obscureRePassword;
    });
  }

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
                  width: 150,
                  height: 150,
              ),

              Text('DAFTAR AKUN BARU', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              
              const SizedBox(height: 20),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nama Lengkap', style: TextStyle(fontWeight: FontWeight.bold)),
              ),

              SizedBox(height: 10),

              SizedBox(
                  height: 56,
                  child: TextField(
                    controller: nameController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF393939),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Nama Lengkap',
                      labelStyle: TextStyle(
                        color: Color(0xFF755DC1),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFF837E93),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFF9F7BFF),
                        ),
                      ),
                      prefixIcon: Icon(Icons.account_circle, color: Colors.brown)
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 155,),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('No HP', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 56,
                      child: TextField(
                        controller: emailController,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF393939),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email, color: Colors.brown),
                          hintText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xFF755DC1),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF9F7BFF),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    SizedBox(
                      width: 187,
                      height: 56,
                      child: TextField(
                        controller: phoneController,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF393939),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone, color: Colors.brown),
                          hintText: 'No HP',
                          labelStyle: TextStyle(
                            color: Color(0xFF755DC1),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF9F7BFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 128),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Konfirmasi Password', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 56,
                      child: TextField(
                        controller: passwordController,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF393939),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        obscureText: obscurePassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock, color: Colors.brown),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscurePassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: togglePasswordVisibility,
                          ),
                          hintText: 'Password',
                          labelStyle: const TextStyle(
                            color: Color(0xFF755DC1),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF9F7BFF),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    SizedBox(
                      width: 187,
                      height: 56,
                      child: TextField(
                        controller: repassController,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF393939),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        obscureText: obscureRePassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock, color: Colors.brown),
                          suffixIcon: IconButton(
                              icon: Icon(
                                obscureRePassword ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: toggleRePasswordVisibility,
                            ),
                          hintText: 'Konfirmasi password',
                          labelStyle: const TextStyle(
                            color: Color(0xFF755DC1),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xFF9F7BFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 15,
                ),

              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  label: Text('Daftar', style: TextStyle(fontSize: 18, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    textStyle: TextStyle(fontSize: 16, color: Colors.white),
                    foregroundColor: Colors.white
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah memiliki akun? Silahkan'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('Login Disini!'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}