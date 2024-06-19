import 'package:chat_app/screens/chatpage.dart';
import 'package:chat_app/screens/setprofile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // icon: Icon(Icons.filter_list),
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => setprofile(),
              ),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "My Chats",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            // color: Colors.green,
            color: Color.fromRGBO(0, 45, 227, 1),
          ),
        ),
        actions: [
          _isSearching
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 48.0, right: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            setState(
                              () {
                                _isSearching = false;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _isSearching = true;
                    });
                  },
                ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ChatPage(),
      // child: Center(child: Text("Chat")),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.green,
        selectedItemColor: Color.fromRGBO(0, 45, 227, 1.0),
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: ("Updates"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: ("Communities"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: ("calls"),
          ),
        ],
      ),
    );
  }
}
