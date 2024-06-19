import 'package:chat_app/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Text(
              'Log in to Chatbox',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#3d4a7a')),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome back! Sign in using your social',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            Text(
              'account or email to continue us',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
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
                        'assets/images/applewhite.svg',
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
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[300],
                    thickness: 0,
                    indent: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[300],
                    thickness: 0,
                    endIndent: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your email',
                    style: TextStyle(
                      color: HexColor('#465280'),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: HexColor('#465280'),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      HexColor('#010102'),
                      HexColor('#3f54a2'),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 170, vertical: 10),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Forgot password?',
              style: TextStyle(
                color: HexColor('#465280'),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
