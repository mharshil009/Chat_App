import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class landingscreen extends StatelessWidget {
  const landingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF050921),
              Color(0xFF0D1A3A),
              Color(0xFF154584),
            ],
          ),
          // image: DecorationImage(
          //   image: AssetImage('assets/images/Vector.png'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 500,
                width: 450,
                child: SvgPicture.asset('assets/images/Vector.svg'),
                // Image.asset('assets/images/12.png'),
              ),
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Text(
                  'Textit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 72.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
