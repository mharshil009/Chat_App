import 'package:chat_app/screens/homepage.dart';
import 'package:chat_app/screens/number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class spalsh extends StatelessWidget {
  const spalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              // child: Image.asset('assets/images/Illustration.png'),
              child: SvgPicture.asset('assets/images/Illustration.svg'),
            ),
            SizedBox(height: 20), // Add some space between image and text
            Text(
              textAlign: TextAlign.center,
              'Connect easily with\n' +
                  'your family and friends\n' +
                  'over countries',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'Terms & Privacy Policy',
                style: TextStyle(
                  color: Colors.black, // Change color as needed
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => number()),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                child: Text('Start Messaging'),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(0, 45, 227, 1.0),
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
