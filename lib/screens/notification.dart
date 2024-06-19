import 'package:chat_app/screens/setprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreen();
}

class _notificationScreen extends State<notificationScreen> {
  bool _enterIsSend = false;
  bool _anotherSwitch = false;
  bool _onemoreSwitch = false;
  bool _fourSwitch = false;
  bool _fiveSwitch = false;
  String _vibrateOption1 = 'Default';
  String _vibrateOption2 = 'Default';
  String _vibrateOption3 = 'Default';
  String _colorOption1 = 'None';
  String _colorOption2 = 'None';
  String? _notificationTonePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SwitchListTile(
                  title: Text(
                    'Conversation tones',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle:
                      Text('Play sounds for incoming and outgoing messages'),
                  value: _enterIsSend,
                  activeTrackColor: Colors.green,
                  onChanged: (value) {
                    setState(
                      () {
                        _enterIsSend = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Messages',
                ),
              ),
              ListTile(
                title: Text(
                  'Notification tone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: _notificationTonePath == null
                    ? Text('Select a tone')
                    : Text(_notificationTonePath!.split('/').last),
                onTap: _pickNotificationTone,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Vibrate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_vibrateOption1),
                onTap: () {
                  _showVibrateOptionDiaglog(1);
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Popup Notification',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Text(
                  'Not available',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                enabled: false,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Light',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_colorOption1),
                onTap: () {
                  _showColorOptionDialog(1);
                },
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                title: Text(
                  'Use high priority notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                    'Show previews of notifications at the top of the screen'),
                value: _anotherSwitch,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(
                    () {
                      _anotherSwitch = value;
                    },
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                title: Text(
                  'Reaction Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                    "Show notifications for reactions to messages you send"),
                value: _onemoreSwitch,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _onemoreSwitch = value;
                  });
                },
              ),
              Divider(
                thickness: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Groups',
                ),
              ),
              ListTile(
                title: Text(
                  'Notification tone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text('3307'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Vibrate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_vibrateOption2),
                onTap: () {
                  _showVibrateOptionDiaglog(2);
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Light',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_colorOption2),
                onTap: () {
                  _showColorOptionDialog(2);
                },
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                title: Text(
                  'Use high priority notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                    "Show notifications for reactions to messages you send"),
                value: _fourSwitch,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _fourSwitch = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              SwitchListTile(
                title: Text(
                  'Reaction Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                    "Show notifications for reactions to messages you send"),
                value: _fiveSwitch,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _fiveSwitch = value;
                  });
                },
              ),
              Divider(
                thickness: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Calls',
                ),
              ),
              ListTile(
                title: Text(
                  'Ringtone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text('whatsapp_incoming_call.mp3'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Vibrate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(_vibrateOption3),
                onTap: () {
                  _showVibrateOptionDiaglog(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showVibrateOptionDiaglog(int option) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vibrate'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: Text('Off'),
                  onTap: () {
                    _selectVibrateOption('Off', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Default'),
                  onTap: () {
                    _selectVibrateOption('Default', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Short'),
                  onTap: () {
                    _selectVibrateOption('Short', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Long'),
                  onTap: () {
                    _selectVibrateOption('Long', option);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _selectVibrateOption(String option, int selectedOption) {
    setState(
      () {
        switch (selectedOption) {
          case 1:
            _vibrateOption1 = option;
            break;
          case 2:
            _vibrateOption2 = option;
            break;
          case 3:
            _vibrateOption3 = option;
            break;
        }
      },
    );
  }

  void _showColorOptionDialog(int option) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Light'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: Text('None'),
                  onTap: () {
                    _selectColorOption('None', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('White'),
                  onTap: () {
                    _selectColorOption('White', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Red'),
                  onTap: () {
                    _selectColorOption('Red', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Yellow'),
                  onTap: () {
                    _selectColorOption('Yellow', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Green'),
                  onTap: () {
                    _selectColorOption('Green', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Cyan'),
                  onTap: () {
                    _selectColorOption('Cyan', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Blue'),
                  onTap: () {
                    _selectColorOption('Blue', option);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Purple'),
                  onTap: () {
                    _selectColorOption('Purple', option);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _selectColorOption(String option, int colorOption) {
    setState(() {
      // _ColorOption = option;
      switch (colorOption) {
        case 1:
          _colorOption1 = option;
          break;
        case 2:
          _colorOption2 = option;
          break;
      }
    });
  }

  void _pickNotificationTone() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
      allowedExtensions: ['mp3'],
    );

    if (result != null) {
      String? selectedFilePath = result.files.single.path;
      setState(
        () {
          _notificationTonePath = selectedFilePath;
        },
      );
    }
  }
}
