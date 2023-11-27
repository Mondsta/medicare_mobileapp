import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> messages = []; // List untuk menyimpan pesan-pesan

  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat Dokter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return _buildMessageBubble(messages[index], index);
                },
              ),
            ),
            _buildInputField(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Ketik pesan...',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      _sendMessage();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(String message, int index) {
    bool isUserMessage =
        index % 2 == 0; // Menentukan apakah pesan ini dari pengguna atau bukan
    Color bubbleColor = isUserMessage
        ? Colors.blue
        : Colors.blue; // Mengubah warna biru pada pesan pengguna
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Anda',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)), // Satu pola seragam
              ),
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    String message = _messageController.text;
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message);
        _messageController.clear();
      });
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Chat(),
  ));
}
