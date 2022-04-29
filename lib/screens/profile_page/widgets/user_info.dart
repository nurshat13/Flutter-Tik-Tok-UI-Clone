import 'package:flutter/material.dart';

Widget get userInfo => SizedBox(
      width: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // user avatar
          const CircleAvatar(
            minRadius: 45,
          ),
          const SizedBox(
            height: 11,
          ),
          // userName
          const Text(
            "@john_doe",
            style: TextStyle(
                color: Color(0xff161722),
                fontWeight: FontWeight.w600,
                fontFamily: "ProximaNova",
                fontStyle: FontStyle.normal,
                fontSize: 17.0),
          ),
          const SizedBox(
            height: 15,
          ),
          //user info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  // conunt

                  Text("1B",
                      style: TextStyle(
                          color: Color(0xff161722),
                          fontWeight: FontWeight.w700,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 17.0),
                      textAlign: TextAlign.center),

                  // title

                  Text("Following",
                      style: TextStyle(
                          color: Color(0xff86878b),
                          fontWeight: FontWeight.w400,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                      textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: const [
                  // conunt

                  Text("1B",
                      style: TextStyle(
                          color: Color(0xff161722),
                          fontWeight: FontWeight.w700,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 17.0),
                      textAlign: TextAlign.center),

                  // title

                  Text("Followers",
                      style: TextStyle(
                          color: Color(0xff86878b),
                          fontWeight: FontWeight.w400,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                      textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: const [
                  // count

                  Text("1B",
                      style: TextStyle(
                          color: Color(0xff161722),
                          fontWeight: FontWeight.w700,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 17.0),
                      textAlign: TextAlign.center),

                  // title

                  Text("Likes",
                      style: TextStyle(
                          color: Color(0xff86878b),
                          fontWeight: FontWeight.w400,
                          fontFamily: "ProximaNova",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                      textAlign: TextAlign.center)
                ],
              ),
            ],
          ),
        ],
      ),
    );
