import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/chat_app_bar.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ChatsAppBar(),
    );
  }
}
