import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/appbarpages/screen/linkedDevice_screen.dart';
import 'package:whatsapp/fatutres/chats/widgets/appbarpages/screen/new_broadcast_screen.dart';
import 'package:whatsapp/fatutres/chats/widgets/appbarpages/screen/new_group_screen.dart';
import 'package:whatsapp/fatutres/chats/widgets/appbarpages/screen/settings_page.dart';
import 'package:whatsapp/fatutres/chats/widgets/appbarpages/screen/starred_messages.dart';

class AppBarIconMethod {
  // Event handler for "more" button press (three vertical dots)
  void onPressedMoreVert(BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset position = renderBox.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx + renderBox.size.width,
        position.dy + renderBox.size.height,
        0,
        0,
      ),
      color: Color(0xff0b1014),
      items: [
        PopupMenuItem(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return NewGroupScreen();
              },
            ));
          },
          value: 'New group',
          child: Text(
            'New group',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return NewBroadcastScreen();
              },
            ));
          },
          value: 'New broadcast',
          child: Text(
            'New broadcast',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return LinkedDeviceScreen();
              },
            ));
          },
          value: 'Linked devices',
          child: Text(
            'Linked devices',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return StarredMessages();
              },
            ));
          },
          value: 'Starred messages',
          child: Text(
            'Starred messages',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SettingsPage();
              },
            ));
          },
          value: 'settings',
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ).then((value) {
      if (value == 'New group') {
        // Add Archive functionality here
      } else if (value == 'New broadcast') {
        // Add Delete functionality here
      } else if (value == 'Linked devices') {
        // Add Delete functionality here
      } else if (value == 'Starred messages') {
        // Add Delete functionality here
      } else if (value == 'settings') {
        // Navigate to Settings page
      }
    });
  }
}
