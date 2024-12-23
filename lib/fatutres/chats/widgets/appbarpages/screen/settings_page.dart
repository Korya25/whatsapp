import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff0b1014),
        elevation: 1,
        shadowColor: Colors.grey,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          // Profile Section
          _buildProfileSection(),
          // Settings Options
          _buildSettingsOption(
            context,
            icon: Icons.key,
            title: 'Account',
            subtitle: 'Privacy, security, change number',
            onTap: () {
              // Handle Account Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.chat,
            title: 'Chats',
            subtitle: 'Theme, wallpapers, chat history',
            onTap: () {
              // Handle Chats Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Message, group & call tones',
            onTap: () {
              // Handle Notifications Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.data_usage,
            title: 'Storage and Data',
            subtitle: 'Network usage, auto-download',
            onTap: () {
              // Handle Storage and Data Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.help_outline,
            title: 'Help',
            subtitle: 'Help center, contact us, privacy policy',
            onTap: () {
              // Handle Help Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.people,
            title: 'Invite a Friend',
            onTap: () {
              // Handle Invite a Friend Tap
            },
          ),
          const SizedBox(height: 20),
          // Footer
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Also from meta',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          const SizedBox(height: 10),
          _buildSettingsOption(
            context,
            icon: Icons.facebook_outlined,
            title: 'Open Instagram',
            onTap: () {
              // Handle Invite a Friend Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.facebook_outlined,
            title: 'Open Facebook',
            onTap: () {
              // Handle Invite a Friend Tap
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.facebook_outlined,
            title: 'Open Threads',
            onTap: () {
              // Handle Invite a Friend Tap
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return ListTile(
      onTap: () {},
      leading: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/daabfa3f-7595-4ae5-b26c-273931c46287.jpg'),
          radius: 30,
        ),
      ),
      title: Text(
        "Korya",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Hey there! I am  using whatsApp',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildSettingsOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: TextStyle(color: Colors.grey[600]),
            )
          : null,
      onTap: onTap,
      tileColor: Color(0xff0b1014),
    );
  }
}
