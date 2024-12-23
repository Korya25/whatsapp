import 'package:flutter/material.dart';

class LinkedDeviceScreen extends StatelessWidget {
  const LinkedDeviceScreen({
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
            Icons.laptop_chromebook_outlined,
            color: Colors.green,
            size: 200,
          ),
          // text
          Text(
            'You can link others devices to this account',
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Learn more',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),

          // Link Device Bottom
          GestureDetector(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  "Link a device",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
