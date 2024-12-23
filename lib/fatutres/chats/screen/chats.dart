import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/appBar/bottom_navigation_bar.dart';
import 'package:whatsapp/fatutres/chats/widgets/appBar/chat_app_bar.dart';
import 'package:whatsapp/fatutres/chats/widgets/chats/chat_rooms.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      appBar: const ChatsAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: const ChatRooms(),
    );
  }
}
