import 'package:flutter/material.dart';
import 'user_chat.dart';
import 'package:intl/intl.dart';

class DokterUmumChat extends StatefulWidget {
  static const routeName = '/chat';

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<DokterUmumChat> {
  final List<String> allUsers = ['Dr. Sherly', 'Dr. Amanda'];
  List<String> displayedUsers = [];

  @override
  void initState() {
    super.initState();
    displayedUsers.addAll(allUsers);
  }

  void filterUsers(String keyword) {
    setState(() {
      displayedUsers = allUsers
          .where((user) => user.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    });
  }

  void navigateToUserChat(String username) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserChatPage(username: username),
      ),
    );
  }

  String getFormattedDate() {
    final now = DateTime.now();
    final formatter = DateFormat('dd MMM yyyy');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(244, 67, 54, 1),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Message',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            suffixIcon: IconButton(
              icon: Icon(Icons.notifications),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                
                // Tambahkan logic saat button notifikasi di klik
              },
            ),
          ),
          onChanged: filterUsers,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 255),
        child: ListView.builder(
          itemCount: displayedUsers.length,
          itemBuilder: (ctx, index) {
            final userName = displayedUsers[index];
            return GestureDetector(
              onTap: () => navigateToUserChat(userName),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(
                  userName,
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Active Now',
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Text(
                      getFormattedDate(),
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}