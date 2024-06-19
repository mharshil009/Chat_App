import 'package:chat_app/screens/setprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  bool _enterIsSend = false;
  bool _anotherSwitch = false;
  bool _onemoreSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Display',
                ),
              ),
              customwidget(
                icon: Icons.wb_sunny_outlined,
                title: 'Theme',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.wallpaper,
                title: 'Wallpaper',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Chat settings',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SwitchListTile(
                  title: Text(
                    'Enter is send',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text('Enter key will send your message'),
                  value: _enterIsSend,
                  activeTrackColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _enterIsSend = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SwitchListTile(
                  title: Text(
                    'Media visibility',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                      "Show newly downloaded media in your device's gallary"),
                  value: _anotherSwitch,
                  activeTrackColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _anotherSwitch = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  title: Text(
                    'Font size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text('medium'),
                  trailing: IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {
                      // Handle font size option tap
                    },
                  ),
                ),
              ),
              Divider(
                thickness: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Archived chats',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SwitchListTile(
                  title: Text(
                    'Keep chats archived',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "Archived chats will remain archived when you receive a new message",
                  ),
                  value: _onemoreSwitch,
                  activeTrackColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _onemoreSwitch = value;
                    });
                  },
                ),
              ),
              Divider(
                thickness: 0,
              ),
              customwidget(
                icon: Icons.backup_outlined,
                title: 'Chat backup',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.smartphone_outlined,
                title: 'Transfer chats',
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              customwidget(
                icon: Icons.history,
                title: 'Chat history',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
