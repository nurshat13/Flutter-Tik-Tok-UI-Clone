import 'package:flutter/material.dart';

import '../../const.dart';
import 'widgets/actions_tool_bar.dart';
import 'widgets/video_description.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key, required this.data, this.isFollowing = true})
      : super(key: key);

  final Video data;
  final bool isFollowing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.only(bottom: 13),
        decoration: BoxDecoration(
          // background video
          image: DecorationImage(
              image: NetworkImage(
                data.videoImgUrl,
              ),
              fit: BoxFit.fitWidth),
        ),
        // video desription and action tool bar
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  // video description
                  VideoDescription(
                    data: data,
                  ),
                  // video actions tool bar
                  ActonsToolBar(
                    data: data,
                    isFollowing: isFollowing,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
