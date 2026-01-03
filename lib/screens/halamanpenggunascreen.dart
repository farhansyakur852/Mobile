import 'dart:ffi' as ffi;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/utils/routes.dart';
import 'welcome_screen.dart';

class Halamanpenggunascreen extends StatefulWidget{
  const Halamanpenggunascreen  ({Key? key}) : super(key: key);

  @override
  State<Halamanpenggunascreen> createState () => _HalamanPenggunaScreenState(); 
}

class _HalamanPenggunaScreenState extends State<Halamanpenggunascreen>{
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
              const SizedBox( height: 18,),
               Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 166, 200, 211).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, rWelcome);
                          },
                          child: Image.asset(
                          'assets/Kabupaten Banyumas.png',
                          width: 50,
                          height: 50,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Deni Kentir'
                          ),
                        
                          SizedBox(width: 10,),
                          GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, rWelcome);
                          },
                          child: Image.asset(
                          'assets/Kabupaten Banyumas.png',
                          width: 50,
                          height: 50,
                          ),
                        ),
                        SizedBox(width: 10,),
                          GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, rWelcome);
                          },
                          child: Image.asset(
                          'assets/Kabupaten Banyumas.png',
                          width: 50,
                          height: 50,
                          ),
                        ),
                        SizedBox(width: 10,),
                          GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, rWelcome);
                          },
                          child: Image.asset(
                          'assets/Kabupaten Banyumas.png',
                          width: 50,
                          height: 50,
                          ),
                        ),
                        SizedBox(width: 10,),
                          GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, rWelcome);
                          },
                          child: Image.asset(
                          'assets/Kabupaten Banyumas.png',
                          width: 50,
                          height: 50,
                          ),
                        ),
                          ],
                    ),
                  ],
                ),
               ),
               SizedBox(height: 65,),
                 Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 166, 200, 211).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10.0),
                ),
                 ),
              const SizedBox(height: 100,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                          'assets/aluraduan.jpeg',
                          width: 318,
                          height: 207,
                          fit: BoxFit.cover,
                          )
                        ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
