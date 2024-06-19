import 'package:chat_app/models/chatUsersModels.dart';
import 'package:chat_app/screens/accountscreen.dart';
import 'package:chat_app/screens/setprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[200],
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customwidget(
                icon: Icons.security_outlined,
                title: 'Security Notifications',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.email_outlined,
                title: 'Email address',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.domain_verification_outlined,
                title: 'Two-step verification',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.mobile_friendly,
                title: 'Change Number',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.info_outline,
                title: 'Request account info',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.delete_outline,
                title: 'Delete account',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
