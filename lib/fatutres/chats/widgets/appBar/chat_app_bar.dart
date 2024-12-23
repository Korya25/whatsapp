import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/chats/widgets/CustomWidget/bar_icon_item.dart';
import 'package:whatsapp/fatutres/chats/widgets/appBar/more_vert_show_menu.dart';

class ChatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBar({
    super.key,
  });

  // Event handler for camera button press
  void _onPressedCamera() {
    // Logic for camera button press here
  }

  // Event handler for search button press
  void _onPressedSearch() {
    // Logic for search button press here
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff0b1014),
      // Background color of the AppBar
      shadowColor: Colors.grey, // Shadow color for the AppBar
      elevation: 0.4, // Elevation to add a subtle shadow effect

      // Title of the AppBar
      title: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.white, // Title color
          fontWeight: FontWeight.w500, // Title font weight
          fontSize: 23, // Title font size
        ),
      ),

      actions: [
        BarIconItem(
            onPressed: _onPressedCamera, icon: Icons.photo_camera_outlined),
        BarIconItem(onPressed: _onPressedSearch, icon: Icons.search),
        BarIconItem(
          onPressed: () {
            AppBarIconMethod().onPressedMoreVert(context);
          },
          icon: Icons.more_vert,
        ),
      ],
    );
  }

  @override
  // Define the preferred size for the AppBar (standard toolbar height)
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
