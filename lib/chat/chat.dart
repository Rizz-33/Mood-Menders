import 'package:app/chat/components/chat_bubble.dart';
import 'package:app/chat/service/auth/auth_service.dart';
import 'package:app/chat/service/chat/chat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String receiverEmail;
  final String receiverID;
  final String receiverName;

  ChatPage({Key? key, required this.receiverEmail, required this.receiverID, required this.receiverName}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //text controller
  final TextEditingController _messageController = TextEditingController();

  //chat and auth service
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  //for textfield focus
  FocusNode MyfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    //add listener to focus node
    MyfocusNode.addListener(() {
      if (MyfocusNode.hasFocus) {
        //cause a delay so that the keyboard has time to show up

        //amount of remaining space will be calculated

        //scroll down

        Future.delayed(const Duration(milliseconds: 500), () => scrollDown());
      }
    });

    //wait a bit for listview to be built, then scroll to bottom
    Future.delayed(
      const Duration(milliseconds: 500),
      () => scrollDown(),
    );
  }

  @override
  void dispose() {
    MyfocusNode.dispose();
    _messageController.dispose();
    super.dispose();
  }

  //scroll controller
  final ScrollController _scrollController = ScrollController();
  void scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  //send message
  void sendMessage() async {
    //if there is something inside the textfield
    if (_messageController.text.isNotEmpty) {
      //send the message
      await _chatService.sendMessage(widget.receiverID, _messageController.text);

      //clear text controller
      _messageController.clear();
    }

    scrollDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 255, 252),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/images/loveearth (1).png',
              width: 36,
            ),
            const SizedBox(width: 24),
            Text(widget.receiverName),
          ],
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: const Color.fromARGB(255, 70, 66, 68),
        elevation: 0,
      ),
      body: Column(
        children: [
          //display all messages
          Expanded(
            child: _buildMessageList(),
          ),

          //user input
          _buildUserInput(),
        ],
      ),
    );
  }

  //build message list
  Widget _buildMessageList() {
    String? senderID = _authService.getCurrentUser()!.uid;

    return StreamBuilder(
      stream: _chatService.getMessage(widget.receiverID, senderID),
      builder: (context, snapshot) {
        //errors
        if (snapshot.hasError) {
          return const Text('Error');
        }

        //loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }

        //list view
        return ListView(
          controller: _scrollController,
          children: snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),);
      },
    );
  }

  //build message item
  Widget _buildMessageItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    //is current user
    bool isCurrentUser = data['senderID'] == _authService.getCurrentUser()?.uid;

    // align message to the right id the sender is the current user, otherwise left
    var alignment = isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

    return Container(
      child: Column(
        crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          ChatBubble(message: data["message"], isCurentUser: isCurrentUser),
        ],
      ),
    );
  }

  //build input
  Widget _buildUserInput() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0,top: 5),
      child: Row(
        children: [
          //textfield
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type a message",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 39, 142, 135),),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                obscureText: false,
                controller: _messageController,
                focusNode: MyfocusNode,
              ),
            ),
          ),

          //send button
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 39, 142, 135),
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: sendMessage,
              icon: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}