import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/utils/routes.dart';
import 'welcome_screen.dart';

class LoginPenggunaScreen extends StatefulWidget{
  const LoginPenggunaScreen  ({Key? key}) : super(key: key);

  @override
  State<LoginPenggunaScreen> createState () => _LoginPenggunaScreenState(); 
}

class _LoginPenggunaScreenState extends State<LoginPenggunaScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
            Positioned.fill(
              child: Image.asset(
                'assets/bg.JPEG',
                fit: BoxFit.cover,
              )
              ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80,),
            Image.asset(
              'assets/Kabupaten Banyumas.png',
              width: 66,
              height: 66,
              ),
              SizedBox(height: 20,),
            Text(
              'Lapak Aduan Banyumas',
              style: GoogleFonts.audiowide(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFE0F7FA),
              ), 
              ),
            Text(
              'Mengadu ~ Melayani ~ Solusi',
              style: GoogleFonts.audiowide(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFE0F7FA),
              ),
              ),
              SizedBox(height: 100,),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5), // White background with opacity
                    borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, rHalamanPengguna);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6499F9),
                    foregroundColor: Colors.black,
                    minimumSize: const Size(240.0, 40.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    textStyle: GoogleFonts.poppins(fontSize: 14.0),
                  ),
                  child: const Text('Login Pengguna'),
                ),
                const SizedBox(height: 18.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, rWelcome);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFADD8E6),
                    foregroundColor: Colors.black,
                    minimumSize: const Size(240.0, 40.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    textStyle: GoogleFonts.poppins(fontSize: 14.0),
                  ),
                  child: const Text('Kembali'),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Anda Pengelola Lapak Aduan?',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFFE0F7FA),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Login Pengelola',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFE0F7FA),
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (){
                      Navigator.pushNamed(context, rLoginPengelola);
                    }
                  ),
                  ),
                  SizedBox(height: 50,),
            Image.asset(
              'assets/Medsos.png',
              width: 346,
              height: 37,
            )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
