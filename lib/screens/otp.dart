import 'package:chat_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otp extends StatefulWidget {
  @override
  _OtpWidgetState createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<otp> {
  bool isTextFieldEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              'Enter Code',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text('We have sent you an SMS with the code'),
          Text('to +91 94-272-856-53'),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      setState(() {
                        isTextFieldEmpty = value.isEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: IsTextFieldEmpty ? Colors.grey[200] : null,
                      filled: isTextFieldEmpty,
                      fillColor: isTextFieldEmpty ? Colors.grey[100] : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(50),
                      // ),
                      counterText: '',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) {
                        setState(() {
                          isTextFieldEmpty = value.isEmpty;
                        });
                      },
                      decoration: InputDecoration(
                        filled: isTextFieldEmpty,
                        fillColor: isTextFieldEmpty ? Colors.grey[100] : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(50),
                        // ),
                        counterText: '',
                      ),
                    )),
                SizedBox(
                  width: 60,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      setState(() {
                        isTextFieldEmpty = value.isEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      filled: isTextFieldEmpty,
                      fillColor: isTextFieldEmpty ? Colors.grey[100] : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(50),
                      // ),
                      counterText: '',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) {
                        setState(() {
                          isTextFieldEmpty = value.isEmpty;
                        });
                      },
                      decoration: InputDecoration(
                        filled: isTextFieldEmpty,
                        fillColor: isTextFieldEmpty ? Colors.grey[100] : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(50),
                        // ),
                        counterText: '',
                      ),
                    )),
                SizedBox(
                  width: 60,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: Text(
              'Resend Code',
              style: TextStyle(
                color: Color.fromRGBO(0, 45, 227, 1.000),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
