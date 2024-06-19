import 'package:chat_app/screens/info.dart';
import 'package:chat_app/screens/interest.dart';
import 'package:chat_app/screens/landingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Newprofile extends StatefulWidget {
  const Newprofile({super.key});

  @override
  State<Newprofile> createState() => _NewprofileState();
}

class _NewprofileState extends State<Newprofile> {
  DateTime? _dateOfBirth;
  File? _userImage;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Complete your profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.note_add),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("Please enter your profile. Don't worry, only you"),
                ],
              ),
              Row(
                children: [
                  Text('can see your personal data. No one else will'),
                ],
              ),
              Row(
                children: [
                  Text('be able to see it. Or you skip it for now.'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // here you have to develop circle avatar
              GestureDetector(
                onTap: _showImagePickerBottomSheet,
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _userImage != null
                        ? FileImage(_userImage!)
                        : AssetImage('assets/placeholder.png') as ImageProvider,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Phone Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '+1 000 000 000',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/india_flag.png', // Replace with the path to your Indian flag image
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 36, // Adjust the width as needed
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Gender',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
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
                height: 15,
              ),
              Text(
                'Date of Birth',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  _selectDateOfBirth(context);
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: _dateOfBirth == null
                          ? 'Select Date of Birth'
                          : _dateOfBirth.toString().split(' ')[0],
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    controller: TextEditingController(
                      text: _dateOfBirth == null
                          ? ''
                          : '${_dateOfBirth!.day}/${_dateOfBirth!.month}/${_dateOfBirth!.year}',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Interest()),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 12),
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

  Future<void> _showImagePickerBottomSheet() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a photo'),
                onTap: _openCamera,
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from gallery'),
                onTap: _openGallery,
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _userImage = File(image.path);
      });
    }
    Navigator.of(context).pop(); // Close the bottom sheet
  }

  Future<void> _openGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _userImage = File(image.path);
      });
    }
    Navigator.of(context).pop(); // Close the bottom sheet
  }
}
