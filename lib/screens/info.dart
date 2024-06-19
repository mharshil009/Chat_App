import 'package:chat_app/screens/landingpage.dart';
import 'package:chat_app/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF050921),
              Color(0xFF0D1A3A),
              Color(0xFF154584),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    'Connect',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'friends',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'easily &',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'quickly',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Our chat app is the perfect way to stay',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'connected with friends and family',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(40, 255, 255, 255),
                    radius: 30,
                    child: Center(
                      child: RoundedButton(
                        logo: SvgPicture.asset(
                          'assets/images/facebook.svg',
                          width: 34,
                          height: 34,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(40, 255, 255, 255),
                    radius: 30,
                    child: Center(
                      child: RoundedButton(
                        logo: SvgPicture.asset(
                          'assets/images/google.svg',
                          width: 34,
                          height: 34,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(40, 255, 255, 255),
                    radius: 30,
                    child: Center(
                      child: RoundedButton(
                        logo: SvgPicture.asset(
                          'assets/images/apple.svg',
                          width: 34,
                          height: 34,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      indent: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromARGB(1, 164, 255, 164),
                    backgroundColor: HexColor('#787e96')),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                  child: Text(
                    'Sign up within mail',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Existing account? ',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => landingscreen()),
                      );
                    },
                    child: Text(
                      'Log in?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final Widget logo;
  final VoidCallback onPressed;

  const RoundedButton({
    super.key,
    required this.logo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(0, 95, 80, 80), child: logo);
  }
}
