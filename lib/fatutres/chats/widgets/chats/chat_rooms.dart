import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/chats/user_tile.dart';

class ChatRooms extends StatelessWidget {
  const ChatRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: 20, // Placeholder item count; replace with dynamic data.
        itemBuilder: (context, index) {
          return const UserTile(
            username: 'Korya',
            lastMessage: 'Hello how are you',
            profileImageUrl:
                'assets/images/daabfa3f-7595-4ae5-b26c-273931c46287.jpg',
            timestamp: '15:21',
          );
        },
      ),
    );
  }
}
