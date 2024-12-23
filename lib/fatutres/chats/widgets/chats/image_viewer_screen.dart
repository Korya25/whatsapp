import 'package:flutter/material.dart';

class ImageViewerScreen extends StatelessWidget {
  final String imageUrl;
  final String username;

  const ImageViewerScreen({
    super.key,
    required this.imageUrl,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildImageSection(),
        _buildActionBar(context),
      ],
    );
  }

  Widget _buildImageSection() {
    return Container(
      height: 280,
      width: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.contain,
        ),
      ),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 15, top: 2),
      child: Text(
        username,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildActionBar(BuildContext context) {
    return Container(
      width: 280,
      color: Color(0xff0b1014),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: _info,
            icon: const Icon(Icons.info_outline, color: Colors.green, size: 28),
          ),
          IconButton(
            onPressed: _videoCall,
            icon: const Icon(Icons.video_call_outlined,
                color: Colors.green, size: 28),
          ),
          IconButton(
            onPressed: _calls,
            icon: const Icon(Icons.call, color: Colors.green, size: 28),
          ),
          IconButton(
            onPressed: _message,
            icon: const Icon(Icons.message_outlined,
                color: Colors.green, size: 28),
          ),
        ],
      ),
    );
  }

  void _info() {
    // Add download functionality here
  }

  void _videoCall() {
    // Add share functionality here
  }

  void _calls() {
    // Add share functionality here
  }

  void _message() {
    // Add share functionality here
  }
}
