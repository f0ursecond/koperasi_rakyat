import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koperasi_rakyat/components/loginscreen.dart';
import 'package:koperasi_rakyat/test.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        bottomOpacity: 0,
        backgroundColor: const Color(0xFF015E31),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 230.0,
            decoration: const BoxDecoration(
              color: Color(0xFF015E31),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            height: 45.0,
                            width: 45.0,
                          ),
                          Text(
                            'KR',
                            style: GoogleFonts.poppins(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, top: 32.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rp 200.000',
                                style: GoogleFonts.rubik(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Saldo Saya',
                                    style: GoogleFonts.rubik(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 170.0,
                      margin: const EdgeInsets.only(left: 70.0, top: 30.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDC500),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '  Bayar Iuran',
                            style: GoogleFonts.rubik(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => test()));
                            },
                            icon: const Icon(
                              Icons.refresh_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Iuran Wajib',
                            style: GoogleFonts.rubik(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rp 150.000',
                                style: GoogleFonts.rubik(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 100.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Iuran Sukarela/Menabung',
                                  style: GoogleFonts.rubik(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Rp 150.000',
                                      style: GoogleFonts.rubik(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0, bottom: 27.0),
                  height: 2.0,
                  width: 430.0,
                  color: const Color(0xFFF6F6F6),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/iconcolor.png',
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    'Tagihan Iuran',
                    style: GoogleFonts.rubik(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '(Belum Dibayar)',
                        style: GoogleFonts.rubik(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            width: 400,
            height: 86,
            decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Iuran Wajib',
                      style: GoogleFonts.rubik(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Bulan Mei 2021',
                          style: GoogleFonts.rubik(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 120.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Rp 20.000',
                            style: GoogleFonts.rubik(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF015E31),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/berita.png',
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    'Berita',
                    style: GoogleFonts.rubik(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lihat Semua',
                        style: GoogleFonts.rubik(
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF015E31),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 160.0,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: [1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.asset(
                        'assets/images/berita1.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/trx.png',
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Transaksi',
                    style: GoogleFonts.rubik(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lihat Semua',
                        style: GoogleFonts.rubik(
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF015E31),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 400,
            height: 86,
            decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Iuran Wajib',
                      style: GoogleFonts.rubik(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Rp 20.000',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF015E31),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 180.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Pending',
                            style: GoogleFonts.rubik(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF015E31),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 400,
            height: 86,
            decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Iuran Wajib',
                      style: GoogleFonts.rubik(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Rp 20.000',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF015E31),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 180.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Berhasil',
                            style: GoogleFonts.rubik(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF015E31),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 400,
            height: 86,
            decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Iuran Wajib',
                      style: GoogleFonts.rubik(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Rp 20.000',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF015E31),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 180.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Gagal',
                            style: GoogleFonts.rubik(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
