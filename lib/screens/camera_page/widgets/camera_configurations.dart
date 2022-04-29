import 'package:flutter/material.dart';

Widget get cameraConfigurations => SizedBox(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 40,
          ),
          // 60s
          const Opacity(
            opacity: 0.6000000238418579,
            child: Text("60s",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
                textAlign: TextAlign.center),
          ),
          const SizedBox(
            width: 30,
          ),
          // 15s
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("15s",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "ProximaNova",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0),
                  textAlign: TextAlign.center),
              CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 3,
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          // Templates
          const Opacity(
            opacity: 0.6000000238418579,
            child: Text("Templates",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
                textAlign: TextAlign.center),
          )
        ],
      ),
    );
