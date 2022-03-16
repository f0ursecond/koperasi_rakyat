import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi_rakyat/components/resetpw.dart';

import 'loginscreen.dart';

class changePw extends StatefulWidget {
  changePw({Key? key}) : super(key: key);

  @override
  State<changePw> createState() => _changePwState();
}

class _changePwState extends State<changePw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                    Text('KR',
                        style: GoogleFonts.poppins(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                  'Ganti Password',
                  style: GoogleFonts.rubik(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
              Container(
                width: 400.0,
                height: 40.0,
                child: const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Password Baru',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF015E31),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.0,
              ),
              Container(
                width: 400.0,
                height: 40.0,
                child: const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Ulangi Password Baru',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF015E31),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Simpan',
                    style: GoogleFonts.rubik(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 55.0,
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF015E31),
                ),
              ),
              SizedBox(
                height: 350.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginScreen()));
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.rubik(
                    fontSize: 16.0,
                    color: Color(0xFF015E31),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
