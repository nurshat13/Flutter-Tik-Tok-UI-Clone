import 'package:flutter/material.dart';

import '../../../const.dart';

Widget get cameraButtons => Padding(
      padding: const EdgeInsets.only(bottom: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Effects
          Column(
            children: [
              Image.asset('$kIconWay/Effects-Illustration.png'),
              const Text("Effects",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "ProximaNova",
                      fontStyle: FontStyle.normal,
                      fontSize: 11.0),
                  textAlign: TextAlign.center)
            ],
          ),
          // record button
          Image.asset('$kIconWay/Record-Button.png'),
          // Upload
          Column(
            children: [
              Image.asset('$kIconWay/Upload-Illustration.png'),
              const Text("Upload",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "ProximaNova",
                      fontStyle: FontStyle.normal,
                      fontSize: 11.0),
                  textAlign: TextAlign.center)
            ],
          ),
        ],
      ),
    );
