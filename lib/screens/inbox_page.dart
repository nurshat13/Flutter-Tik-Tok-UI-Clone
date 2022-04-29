import 'package:flutter/material.dart';

import '../const.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // title
        title: const Text(
          "All activity",
          style: TextStyle(
              color: Color(0xff161722),
              fontWeight: FontWeight.w700,
              fontFamily: "ProximaNova",
              fontStyle: FontStyle.normal,
              fontSize: 17.0),
        ),
        // message button
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('$kIconWay/Message.png'),
            ),
            color: Colors.black,
          )
        ],
      ),
      // body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // large inBox icon
            ImageIcon(
              AssetImage('$kIconWay/Inbox-Big.png'),
              size: 90,
              color: const Color(0xffB0B0B3),
            ),
            // title
            const Text(
              "Notifications aren’t available",
              style: TextStyle(
                  color: Color(0xff161722),
                  fontWeight: FontWeight.w600,
                  fontFamily: "ProximaNova",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0),
            ),
            const SizedBox(
              height: 12,
            ),
            // subtitle
            const Text("Notifications about your account will appear here",
                style: TextStyle(
                    color: Color(0xff7c7d83),
                    fontWeight: FontWeight.w400,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
