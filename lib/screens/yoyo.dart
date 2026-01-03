import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget{
    const SplashScreen({
      Key? key,
    }) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          color: const Color(0xFF40C4FF),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('assets/logocobaa.png'),
              const SizedBox(height: 25.54,),
              Text(
                'PANDU PRASETYA MULIA',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ), 
                ),
              Text(
                'Mengadu, Melayani, Solusi',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                ),
            ],
          ),
          ),
      ),
      ),
    );
  }
}

