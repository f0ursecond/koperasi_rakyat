import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi_rakyat/components/loginscreen.dart';

import 'changepw.dart';

class resetPw extends StatefulWidget {
  resetPw({Key? key}) : super(key: key);

  @override
  State<resetPw> createState() => _resetPwState();
}

class _resetPwState extends State<resetPw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 200),
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
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.rubik(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
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
                height: 20.0,
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => changePw()));
                  },
                  child: Text(
                    'Kirim Link Reset',
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
          )
        ],
      ),
    );
  }
}
