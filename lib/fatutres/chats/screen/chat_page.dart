import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/CustomWidget/bar_icon_item.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.profileImageUrl,
    required this.userName,
  });

  final String profileImageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      iconTheme: const IconThemeData(color: Colors.white),
      title: _buildTitle(),
      actions: _buildActions(),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profileImageUrl),
          radius: 20,
        ),
        const SizedBox(width: 10),
        Text(
          userName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildActions() {
    return [
      BarIconItem(onPressed: _onPressedVideoCall, icon: Icons.video_call_sharp),
      BarIconItem(onPressed: _onPressedCall, icon: Icons.call_outlined),
      BarIconItem(onPressed: _onPressedMore, icon: Icons.more_vert),
    ];
  }

  void _onPressedVideoCall() {
    // Implement video call functionality
  }

  void _onPressedCall() {
    // Implement call functionality
  }

  void _onPressedMore() {
    // Implement more options functionality
  }
}
