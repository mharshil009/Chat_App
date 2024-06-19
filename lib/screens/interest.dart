import 'package:chat_app/screens/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  bool _isReadingButtonSelected = false;
  bool _isRunningButtonSelected = false;
  bool _isCyclingButtonSelected = false;
  bool _isGuitarButtonSelected = false;
  bool _isPianoButtonSelected = false;
  bool _isPhotographyButtonSelected = false;
  bool _isMusicButtonSelected = false;
  bool _isWhiskeyButtonSelected = false;
  bool _isArtButtonSelected = false;
  bool _isTravelButtonSelected = false;
  bool _isComedyButtonSelected = false;
  bool _isSwimmingButtonSelected = false;
  bool _isCodingButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              'Select up to 5 interest',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text('share your interests passions and hobbies.'),
          Text("We'll connect you with people who share your"),
          Text('enthusiasm.'),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Interest',
                prefixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isReadingButtonSelected = !_isReadingButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isReadingButtonSelected
                      ? Colors.blue
                      : null, // Adjust padding
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Book.png',
                      // color: Colors.white,
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Reading',
                      style: TextStyle(
                        color: _isReadingButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isRunningButtonSelected = !_isRunningButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isRunningButtonSelected
                      ? Colors.blue
                      : null, // Adjust padding
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Running.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Running',
                      style: TextStyle(
                        color: _isRunningButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isCyclingButtonSelected = !_isCyclingButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isCyclingButtonSelected
                      ? Colors.blue
                      : null, // Adjust padding
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Triathlon.png',
                      height: 26,
                      width: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Cycling',
                      style: TextStyle(
                        color: _isCyclingButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isGuitarButtonSelected = !_isGuitarButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isGuitarButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Guitar.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Guitar',
                      style: TextStyle(
                        color: _isGuitarButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPianoButtonSelected = !_isPianoButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isPianoButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Piano.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Piano',
                      style: TextStyle(
                        color: _isPianoButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPhotographyButtonSelected =
                        !_isPhotographyButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor:
                      _isPhotographyButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Camera.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Photography',
                      style: TextStyle(
                        color: _isPhotographyButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isMusicButtonSelected = !_isMusicButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isMusicButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Music.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Music',
                      style: TextStyle(
                        color: _isMusicButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isWhiskeyButtonSelected = !_isWhiskeyButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor:
                      _isWhiskeyButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/TumblerGlass.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Whiskey',
                      style: TextStyle(
                        color: _isWhiskeyButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isArtButtonSelected = !_isArtButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: _isArtButtonSelected
                        ? Colors.blue
                        : null // Adjust padding
                    ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Art.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Art',
                      style: TextStyle(
                        color:
                            _isArtButtonSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isTravelButtonSelected = !_isTravelButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isTravelButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Travel.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Travel',
                      style: TextStyle(
                        color: _isTravelButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isComedyButtonSelected = !_isComedyButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: _isComedyButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Comedy.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Comedy',
                      style: TextStyle(
                        color: _isComedyButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isSwimmingButtonSelected = !_isSwimmingButtonSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor:
                      _isSwimmingButtonSelected ? Colors.blue : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/Swimming.png',
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Swimming',
                      style: TextStyle(
                        color: _isSwimmingButtonSelected
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isCodingButtonSelected = !_isCodingButtonSelected;
              });
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              backgroundColor: _isCodingButtonSelected ? Colors.blue : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/Coding.png',
                  width: 26,
                  height: 26,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Coding',
                  style: TextStyle(
                    color:
                        _isCodingButtonSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
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
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
