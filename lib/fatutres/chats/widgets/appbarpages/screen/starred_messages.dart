import 'package:flutter/material.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

// Build App Bar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff0b1014),
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        "Linked device",
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
        ),
      ),
    );
  }

// Build Body
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          Icon(
            Icons.star_rate,
            color: Colors.green,
            size: 100,
          ),
          SizedBox(
            height: 70,
          ),
          // text
          Text(
            'Tap and hold on any message in any chat to star it, so you can easily find it later.',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
