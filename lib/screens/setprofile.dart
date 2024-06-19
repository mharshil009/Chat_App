import 'package:chat_app/models/chatUsersModels.dart';
import 'package:chat_app/screens/accountscreen.dart';
import 'package:chat_app/screens/chatscreen.dart';
import 'package:chat_app/screens/editprofile.dart';
import 'package:chat_app/screens/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setprofile extends StatefulWidget {
  const setprofile({super.key});

  @override
  State<setprofile> createState() => _setprofileState();
}

class _setprofileState extends State<setprofile> {
  final String userName = 'Kriss Benwat';
  final String phoneNumber = '+91 94 27 285 653';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      Icons.person_outline,
                      size: 40.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              phoneNumber,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (ctx) => Editprofile(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              customwidget(
                icon: Icons.person_outline,
                title: 'Account',
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (ctx) => AccountScreen()));
                },
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.chat_bubble_outline_rounded,
                title: 'Chats',
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (ctx) => chatscreen()));
                },
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 30,
              ),
              customwidget(
                icon: Icons.wb_sunny_outlined,
                title: 'Appereance',
                onTap: () {},
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.notifications_outlined,
                title: 'Notification',
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (ctx) => notificationScreen()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.privacy_tip_outlined,
                title: 'Privacy',
                onTap: () {},
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.folder_outlined,
                title: 'Data Usage',
                onTap: () {},
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
                indent: 5,
                endIndent: 5,
                thickness: 0,
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.help_outline,
                title: 'Help',
                onTap: () {},
                onRightButtonTap: null,
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.email_outlined,
                title: 'Invite your friends',
                onTap: () {},
                onRightButtonTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customwidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback? onRightButtonTap;

  const customwidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.onRightButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 28,
                color: Colors.black,
              ),
              SizedBox(width: 20.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.chevron_right,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: onRightButtonTap != null ? onRightButtonTap : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
