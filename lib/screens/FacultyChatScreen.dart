/*import 'package:flutter/material.dart';

class FacultyChatScreen extends StatefulWidget {
  const FacultyChatScreen({super.key});

  @override
  _FacultyChatScreenState createState() => _FacultyChatScreenState();
}

class _FacultyChatScreenState extends State<FacultyChatScreen> {
  TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'sender': 'You',
          'message': _controller.text,
        });
        _controller.clear();
      });

      // Simulating faculty response after 1 second
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          messages.add({
            'sender': 'Faculty',
            'message': 'Thank you for your message. How can I assist you?',
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty Chat'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text(message['message']!),
                  subtitle: Text(message['sender']!),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  tileColor: message['sender'] == 'You' ? Colors.blue[50] : Colors.green[50],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class FacultyChatScreen extends StatefulWidget {
  const FacultyChatScreen({super.key});

  @override
  _FacultyChatScreenState createState() => _FacultyChatScreenState();
}

class _FacultyChatScreenState extends State<FacultyChatScreen> {
  TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'sender': 'You (AI Chat)',
          'message': _controller.text,
        });
        _controller.clear();
      });

      // Simulating faculty response after 1 second
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          messages.add({
            'sender': 'Faculty (Faculty Chat)',
            'message': 'Thank you for your message. How can I assist you?',
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty Chat'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text(message['message']!),
                  subtitle: Text(message['sender']!),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  tileColor: message['sender'] == 'You (AI Chat)'
                      ? Colors.blue[50] // AI Chat color
                      : Colors.green[50], // Faculty Chat color
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

