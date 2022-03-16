import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi_rakyat/components/resetpw.dart';
import 'package:koperasi_rakyat/homescreen.dart';

class loginScreen extends StatefulWidget {
  loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
                    Text(
                      'KR',
                      style: GoogleFonts.poppins(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Selamat Datang di',
                  style: GoogleFonts.rubik(
                      fontSize: 16.0, fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Container(
                child: Text(
                  'Koperasi Rakyat',
                  style: GoogleFonts.rubik(
                      fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              Container(
                width: 400.0,
                height: 40.0,
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukan Email Anda',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
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
                    hintText: 'Password',
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homeScreen()));
                  },
                  child: Text(
                    'Masuk',
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
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.only(left: 245.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => resetPw())));
                          },
                          child: Text(
                            'Lupa Password',
                            style: GoogleFonts.rubik(
                                fontSize: 16.0,
                                color: Color(0xFF015E31),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
