import 'package:flutter/material.dart';

class NewBroadcastScreen extends StatelessWidget {
  const NewBroadcastScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      appBar: _buildAppBar(),
      // المفروض هنا Chat تتحدد مش لما تضغط عليها تفتح chat page
      /*
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.grey, width: 0.1),
              ),
            ),
            child: Center(
              child: Text(
                "Only contacts with +20 10 65171195 in their address book will receive your broadcast messages.",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Expanded(child: _buildBody()),
        ],
      ),
      */
    );
  }

// Build App Bar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff0b1014),
      iconTheme: IconThemeData(color: Colors.white),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New broadcast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          Text(
            "0 of 255",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
/*
// Build Body
  Widget _buildBody() {
    return ChatRooms();
  }
  */
}
