import 'package:flutter/material.dart';

class NewGroupScreen extends StatelessWidget {
  const NewGroupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      appBar: _buildAppBar(),
      // المفروض هنا Chat تتحدد مش لما تضغط عليها تفتح chat page
      /*   body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Frequently contacted",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )),
          Expanded(child: _buildBody()),
        ],
      ),*/
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
            "New group",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          Text(
            "Add members",
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
