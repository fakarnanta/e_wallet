import 'dart:ui';

import 'package:e_wallet/top_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:e_wallet/history.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
   FlutterNativeSplash.remove();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e_wallet',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: Column(children: [Header()])),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Ganteng',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 185, 185, 185)),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 7,
            ),
            Text.rich(TextSpan(
                text: 'Good Morning, ',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                children: <InlineSpan>[
                  TextSpan(
                      text: "Don't",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 22)))
                ])),
            Text.rich(TextSpan(
                text: 'Forget to Have ',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 22)),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Breakfast!',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)))
                ])),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(
                left: 25,
                top: 16,
              ),
              alignment: Alignment.center,
              height: 220,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 231, 209),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      'My Balance',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 120),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.ellipsisVertical),
                      onPressed: () {},
                    )
                  ]),
                  SizedBox(height: 15),
                  Text(
                    'Total Balance',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 109, 109, 109))),
                  ),
                  Text.rich(TextSpan(
                    text: "Rp.",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 109, 109, 109)),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "10.000",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: ",00",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 109, 109, 109)),
                      ),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 47,
                          width: 120,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                )),
                              ),
                              child: Text(
                                'Deposit',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                )),
                              )),
                        ),
                        SizedBox(
                          height: 47,
                          width: 120,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 226, 213, 200)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                )),
                              ),
                              child: Text(
                                'Withdraw',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12, color: Colors.black)),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9),
            Container(
              margin: EdgeInsets.only(left: 100),
              height: 5,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 221, 221, 221),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 100,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.arrowRightArrowLeft,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Transfer',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.wallet,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopUp()));
                          },
                        ),
                        Text(
                          'Top Up',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.clockRotateLeft,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => History()));
                          },
                        ),
                        Text(
                          'History',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Payment List',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.bolt,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Electricity',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.wifi,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Internet',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.ticket,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Voucher',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.briefcaseMedical,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Assurance',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.cartShopping,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Merchant',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.mobileButton,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Mobile Credit',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.moneyBills,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Bill',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: FaIcon(FontAwesomeIcons.ellipsis,
                          color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'More',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Promo & Discount',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(width: 70),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See More',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 160, 147, 134),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 25),
            Container(
              height: 150,
              width: 1000,
              child: ListView(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 231, 209),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '30% OFF',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black)),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Black Friday Deal',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Get discount for every topup, \n payment and transfer',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey[600])),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(width: 15),
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 231, 209),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(height: 15),
                  ]),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
