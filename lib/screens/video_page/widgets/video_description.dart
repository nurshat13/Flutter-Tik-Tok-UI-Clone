import 'package:flutter/material.dart';

import '../../../const.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key, required this.data}) : super(key: key);

  final Video data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // user name
            Text(
              '@${data.userName}',
              style: const TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  fontFamily: "ProximaNova",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0),
            ),
            Container(
              height: 10.0,
            ),
            // video description
            Text(
              data.videoText,
              style: const TextStyle(
                  color: Color(0xe5ffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "ProximaNova",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ),
            Container(
              height: 10.0,
            ),
            // song and song artist name
            Row(children: [
              const Icon(Icons.music_note, color: Colors.white, size: 15.0),
              Container(
                width: 10.0,
              ),
              // song artist name
              Text(
                data.songArtistName,
                style: const TextStyle(
                    color: Color(0xe5ffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
              ),
              Container(
                width: 10.0,
              ),
              //song name
              Text(
                data.songName,
                style: const TextStyle(
                    color: Color(0xe5ffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "ProximaNova",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
              )
            ]),
            Container(
              height: 12.0,
            ),
          ]),
    ));
  }
}
