import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/utils/routes.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen ({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
            child: Image.asset(
              'assets/bg.JPEG',
              fit: BoxFit.cover,
            ),
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
            const SizedBox(height: 180,),
              // Menggunakan Spacer
              // const Spacer(),
              // Tombol login dan Register
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, rLogin);
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
                side: const BorderSide(color: Colors.black,),
              ),
              child: const Text( 'Login'),
             ),
             SizedBox(height: 18.0,),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, rDaftar);
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
                side: const BorderSide(color: Colors.black),
              ),
              child: const Text( 'Daftar'),
             ),
             SizedBox(height: 50,),
             // const Spacer(),
             Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      'Lapak Aduan Banyumas adalah ruang komunikasi publik yang diselenggarakan oleh Pemerintah Kabupaten Banyumas, yang memungkinkan masyarakat bisa secara aktif menyampaikan aduan, keluhan, informasi, pertanyaan maupun saran terhadap pelaksanaan pembangunan dan pengelolaan pelayanan daerah di lingkungan Kabupaten Banyumas.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    )
                  ],
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
            )
          ],
      ),
    );
  }
}

