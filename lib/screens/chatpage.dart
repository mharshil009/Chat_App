import 'package:chat_app/models/chatUsersModels.dart';
import 'package:chat_app/widgets/conversationList.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Kriss Benwat",
        messageText: "Awesome Setup",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj6f1TEt2umBEnBStuEAIHnuGRP3qGjmdyug&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqkUYrITWyI8OhPNDHoCDUjGjhg8w10_HRqg&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Dolly",
        messageText: "Hey where are you?",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi1fTlnz5L4wjlrDcx91vBh1IZkUl_T36cRQ&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEDU_TmMK9xYGD2Vhk7IkYO-9g5VOi4QHG0A&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL:
            "https://i0.wp.com/studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg?ssl=1",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaPb73QjUIgOKquhjmDNMh1rsjqPgVda550A&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrCt8FZVts-1zYSJV7tmzfGPN33lKB02VJ0A&s",
        time: "31-05-2024 20:35"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuki5lrBmRRvk5KhjrMwByvTFz2c5Cb9vWTA&s",
        time: "31-05-2024 20:35"),
  ];

  int? _selectedButton = 0;

  void _handleButtonPress(int buttonIndex) {
    setState(() {
      _selectedButton = buttonIndex;
    });
  }

  Widget _buildSelectableButton(String text, int index) {
    return OutlinedButton(
      onPressed: () => _handleButtonPress(index),
      style: OutlinedButton.styleFrom(
        foregroundColor: _selectedButton == index ? Colors.white : Colors.black,
        surfaceTintColor: Color.fromRGBO(0, 45, 227, 1.0),
        side: BorderSide(color: Color.fromRGBO(0, 45, 227, 1.0)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 6.0),
        backgroundColor: _selectedButton == index
            ? Color.fromRGBO(0, 45, 227, 1.0)
            : Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSelectableButton('All', 0),
                  _buildSelectableButton('Public', 1),
                  _buildSelectableButton('Private', 2),
                ],
              ),
            ),

            // Add the ListView.builder here
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                  pendingMessageCount: 3,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
