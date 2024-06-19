import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  DateTime? _dateOfBirth;
  double? _selectedHeight;
  double? _selectedWeight;
  String? _countryValue = "India";
  String? _stateValue = "Gujarat";
  String? _cityValue = "Ahmedabad";
  bool _isCyclingButtonSelected = false;
  bool _isGuitarButtonSelected = false;
  bool _isPianoButtonSelected = false;
  bool _isPhotographyButtonSelected = false;
  bool _isMusicButtonSelected = false;
  bool _isWhiskeyButtonSelected = false;

  List<double> heights = List.generate(71, (index) => index + 120.0);
  List<double> weights = List.generate(91, (index) => index + 30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Nickname',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 151,
                  ),
                  Text(
                    'Birthday',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10), // Add some spacing between the rows
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _selectDateOfBirth(context);
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: _dateOfBirth == null
                                ? '01/01/2000'
                                : _dateOfBirth.toString().split(' ')[0],
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: Icon(Icons.calendar_month_outlined),
                          ),
                          controller: TextEditingController(
                            text: _dateOfBirth == null
                                ? ''
                                : '${_dateOfBirth!.day}/${_dateOfBirth!.month}/${_dateOfBirth!.year}',
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  SizedBox(
                    width: 178,
                  ),
                  Text(
                    'Weight',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<double>(
                                value: _selectedHeight,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text('Select Height'),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedHeight = value;
                                  });
                                },
                                items: heights.map((height) {
                                  return DropdownMenuItem<double>(
                                    value: height,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                          '${height.toStringAsFixed(2)} cm'),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<double>(
                          value: _selectedWeight,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Select Weight'),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _selectedWeight = value;
                            });
                          },
                          items: weights.map((weight) {
                            return DropdownMenuItem<double>(
                              value: weight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('${weight.toStringAsFixed(2)} kg'),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'About Me',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  // disabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey),
                  // ),
                ),
                hint: Text('Select Gender'),
                items: [
                  DropdownMenuItem(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                  DropdownMenuItem(
                    value: 'Other',
                    child: Text('Other'),
                  ),
                ],
                onChanged: (value) {},
                icon: Icon(Icons.arrow_drop_down),
                dropdownColor:
                    Colors.white, // Set the dropdown background color to white
                focusColor:
                    Colors.transparent, // Set the focus color to transparent
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              CSCPicker(
                showStates: true,
                showCities: true,
                flagState: CountryFlag.DISABLE,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                disabledDropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                countryDropdownLabel: _countryValue ?? 'India',
                stateDropdownLabel: _stateValue ?? 'Gujarat',
                cityDropdownLabel: _cityValue ?? 'Ahmedabad',
                onCountryChanged: (value) {
                  setState(() {
                    _countryValue = value;
                  });
                },
                onStateChanged: (value) {
                  setState(() {
                    _stateValue = value;
                  });
                },
                onCityChanged: (value) {
                  setState(() {
                    _cityValue = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'My Interests',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.amber,
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Interests',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isCyclingButtonSelected =
                                  !_isCyclingButtonSelected;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
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
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isGuitarButtonSelected =
                                  !_isGuitarButtonSelected;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            backgroundColor:
                                _isGuitarButtonSelected ? Colors.blue : null,
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
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isPianoButtonSelected = !_isPianoButtonSelected;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            backgroundColor:
                                _isPianoButtonSelected ? Colors.blue : null,
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isPhotographyButtonSelected =
                                  !_isPhotographyButtonSelected;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            backgroundColor: _isPhotographyButtonSelected
                                ? Colors.blue
                                : null,
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
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isMusicButtonSelected = !_isMusicButtonSelected;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            backgroundColor:
                                _isMusicButtonSelected ? Colors.blue : null,
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
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Language I Know!',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 5),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  // disabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey),
                  // ),
                ),
                hint: Text('Select Language'),
                items: [
                  DropdownMenuItem(
                    value: 'English',
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: 'Hindi',
                    child: Text('Hindi'),
                  ),
                  DropdownMenuItem(
                    value: 'Gujarati',
                    child: Text('Gujarati'),
                  ),
                ],
                onChanged: (value) {},
                icon: Icon(Icons.arrow_drop_down),
                dropdownColor:
                    Colors.white, // Set the dropdown background color to white
                focusColor:
                    Colors.transparent, // Set the focus color to transparent
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Religion',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  // disabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey),
                  // ),
                ),
                hint: Text('Select Religion'),
                items: [
                  DropdownMenuItem(
                    value: 'Jain',
                    child: Text('Jain'),
                  ),
                  DropdownMenuItem(
                    value: 'Hindu',
                    child: Text('Hindu'),
                  ),
                  DropdownMenuItem(
                    value: 'Muslim',
                    child: Text('Muslim'),
                  ),
                ],
                onChanged: (value) {},
                icon: Icon(Icons.arrow_drop_down),
                dropdownColor:
                    Colors.white, // Set the dropdown background color to white
                focusColor:
                    Colors.transparent, // Set the focus color to transparent
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Add your button's functionality here
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 12),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // Add some spacing between the buttons
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      // Add your second button's functionality here
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 12),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _dateOfBirth) {
      setState(() {
        _dateOfBirth = picked;
      });
    }
  }
}
