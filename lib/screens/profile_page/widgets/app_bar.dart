import 'package:flutter/material.dart';

import '../../../const.dart';

Widget get appBar => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      // user name
      title: const Text("John Doe",
          style: TextStyle(
              color: Color(0xff161722),
              fontWeight: FontWeight.w700,
              fontFamily: "ProximaNova",
              fontStyle: FontStyle.normal,
              fontSize: 17.0)),
      centerTitle: true,
      // add friends button
      leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            '$kIconWay/Add-Account.png',
            color: Colors.black,
          )),
      // more options button
      actions: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              '$kIconWay/Menu.png',
              color: Colors.black,
            ))
      ],
    );
