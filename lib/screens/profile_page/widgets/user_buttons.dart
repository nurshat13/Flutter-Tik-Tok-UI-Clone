import 'package:flutter/material.dart';

import '../../../const.dart';

Widget get buttons => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // edit profile
            TextButton(
              onPressed: () {},
              child: const Text(
                "Edit profile",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(
                    color: Color(0xffE3E3E4),
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // bookmark
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE3E3E4), width: 1),
                shape: BoxShape.rectangle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('$kIconWay/Bookmark.png'),
              ),
            )
          ],
        ),
        // Tap to add bio
        TextButton(
          onPressed: () {},
          child: const Text("Tap to add bio",
              style: TextStyle(
                  color: Color(0xff86878b),
                  fontWeight: FontWeight.w400,
                  fontFamily: "ProximaNova",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              textAlign: TextAlign.center),
        )
      ],
    );
