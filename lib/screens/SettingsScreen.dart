import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class AIAssistantScreen extends StatefulWidget {
  const AIAssistantScreen({Key? key}) : super(key: key);

  @override
  _AIAssistantScreenState createState() => _AIAssistantScreenState();
}

class _AIAssistantScreenState extends State<AIAssistantScreen> {
  List<ChatMessage> messages = [];

  final ChatUser currentUser = ChatUser(
    id: 'user',
    firstName: 'You',
  );

  final ChatUser botUser = ChatUser(
    id: 'bot',
    firstName: 'Gemini AI',
  );

  @override
  void initState() {
    super.initState();
    Gemini.init(apiKey: "AIzaSyBUGI2gLQwWKLLlFGbXAyZJabTEVFNw484"); // Replace with your API Key
  }

  void _handleSend(ChatMessage message) async {
    setState(() {
      messages.insert(0, message);
    });

    try {
      final response = await Gemini.instance.prompt(parts: [Part.text(message.text)]);
      final botReply = response?.output ?? "No response received";

      setState(() {
        messages.insert(
          0,
          ChatMessage(
            text: botReply,
            user: botUser,
            createdAt: DateTime.now(),
          ),
        );
      });
    } catch (error) {
      setState(() {
        messages.insert(
          0,
          ChatMessage(
            text: "Error: ${error.toString()}",
            user: botUser,
            createdAt: DateTime.now(),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark mode
      appBar: AppBar(
        title: const Text("AI Assistant "),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 5,
      ),
      body: Column(
        children: [
          Expanded(
            child: DashChat(
              currentUser: currentUser,
              messages: messages,
              messageOptions: MessageOptions(
                currentUserContainerColor: Colors.green[600]!, // Fixed: Non-nullable color
                containerColor: Colors.grey[800]!, // Fixed: Non-nullable color
                textColor: Colors.white,
                currentUserTextColor: Colors.white,
                messagePadding: EdgeInsets.all(10),
                borderRadius: 12,
              ),
              inputOptions: InputOptions(
                inputTextStyle: TextStyle(color: Colors.white), // Ensures input text is visible
                inputDecoration: InputDecoration(
                  hintText: "Type a message...",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[900]!,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                sendButtonBuilder: (onSend) => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green[600]!,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green!.withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: onSend,
                  ),
                ),
              ),
              onSend: _handleSend,
            ),
          ),
        ],
      ),
    );
  }
}
