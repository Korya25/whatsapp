import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xff0b1014),
      shadowColor: Color(0xff0b1014),
      elevation: 5,
      height: 100,
      child: chatsNavItemList(),
    );
  }

  Widget chatsNavItemList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          chatsNavItem(
            title: 'Chats',
            icon: Icons.chat_sharp,
            onTap: () {},
          ),
          Spacer(flex: 1),
          chatsNavItem(
            title: 'Updates',
            icon: Icons.update,
            onTap: () {},
          ),
          Spacer(flex: 1),
          chatsNavItem(
            title: 'Communities',
            icon: Icons.groups_3,
            onTap: () {},
          ),
          Spacer(flex: 1),
          chatsNavItem(
            title: 'Calls',
            icon: Icons.phone_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  // build ChatsNavItem
  Widget chatsNavItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white, // Title color
            fontWeight: FontWeight.w500, // Title font weight
            fontSize: 16, // Title font size
          ),
        ),
      ],
    );
  }
}
