import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Body()],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'How would you \nlike to top up ? ',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Text(
            'My Save Card',
            style: GoogleFonts.poppins(
              color: Colors.grey[400],
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 90,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 231, 209),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 20),
                Text('New Card',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Bank Transfer',
            style: GoogleFonts.poppins(
              color: Colors.grey[400],
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: 90,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    SvgPicture.asset(
                      'assets/icons/bca.svg',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 180),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FaIcon(
                        FontAwesomeIcons.arrowRight,
                        size: 20,
                      ),
                    )
                  ])),
          SizedBox(height: 20),
          Container(
              height: 90,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    SvgPicture.asset(
                      'assets/icons/mandiri.svg',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 170),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FaIcon(
                        FontAwesomeIcons.arrowRight,
                        size: 20,
                      ),
                    )
                  ]))
        ]),
      ),
    );
  }
}
