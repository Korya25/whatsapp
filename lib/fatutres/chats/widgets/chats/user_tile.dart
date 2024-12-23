import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/screen/chat_page.dart';
import 'package:whatsapp/fatutres/chats/widgets/chats/image_viewer_screen.dart';

class UserTile extends StatelessWidget {
  final String username;
  final String lastMessage;
  final String profileImageUrl;
  final String timestamp;

  const UserTile({
    super.key,
    required this.username,
    required this.lastMessage,
    required this.profileImageUrl,
    required this.timestamp,
  });

  void _showImageViewerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: ImageViewerScreen(
            imageUrl: profileImageUrl,
            username: username,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              profileImageUrl: profileImageUrl,
              userName: username,
            ),
          ),
        );
      },
      leading: GestureDetector(
        onTap: () => _showImageViewerDialog(context),
        child: CircleAvatar(
          backgroundImage: AssetImage(profileImageUrl),
          radius: 25,
        ),
      ),
      title: Text(
        username,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[600],
        ),
      ),
      trailing: Text(
        timestamp,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
