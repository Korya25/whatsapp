import 'package:flutter/material.dart';

class ChatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBar({
    super.key,
    this.iconColor = Colors.white, // Default color for icons
    this.iconSize = 23, // Default size for icons
  });

  // Parameters to customize icon color and size
  final Color iconColor;
  final double iconSize;

  // Event handler for camera button press
  void _onPressedCamera() {
    // Logic for camera button press here
  }

  // Event handler for search button press
  void _onPressedSearch() {
    // Logic for search button press here
  }

  // Event handler for "more" button press (three vertical dots)
  void _onPressedMoreVert() {
    // Logic for more options button press here
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87, // Background color of the AppBar
      shadowColor: Colors.grey, // Shadow color for the AppBar
      elevation: 1, // Elevation to add a subtle shadow effect

      // Title of the AppBar
      title: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.green, // Title color
          fontWeight: FontWeight.w500, // Title font weight
          fontSize: 23, // Title font size
        ),
      ),

      actions: [
        // Camera IconButton with customizable color and size
        IconButton(
          onPressed: _onPressedCamera, // Function called on press
          icon: Icon(
            Icons.photo_camera_outlined, // Icon for camera
            color: iconColor, // Customizable icon color
            size: iconSize, // Customizable icon size
          ),
        ),

        // Search IconButton with customizable color and size
        IconButton(
          onPressed: _onPressedSearch, // Function called on press
          icon: Icon(
            Icons.search, // Icon for search
            color: iconColor, // Customizable icon color
            size: iconSize, // Customizable icon size
          ),
        ),

        // More (three vertical dots) IconButton with customizable color and size
        IconButton(
          onPressed: _onPressedMoreVert, // Function called on press
          icon: Icon(
            Icons.more_vert, // Icon for more options
            color: iconColor, // Customizable icon color
            size: iconSize, // Customizable icon size
          ),
        ),
      ],
    );
  }

  @override
  // Define the preferred size for the AppBar (standard toolbar height)
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
