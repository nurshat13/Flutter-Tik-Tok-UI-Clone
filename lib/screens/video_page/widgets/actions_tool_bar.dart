import 'package:flutter/material.dart';
import '../../../const.dart';

class ActonsToolBar extends StatelessWidget {
  const ActonsToolBar({Key? key, required this.data, required this.isFollowing})
      : super(key: key);

  final Video data;
  final bool isFollowing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // profile action
          _getProfileVideoAction(
              pictureUrl: data.userImgUrl, isFollowing: isFollowing),
          // video actions
          _getVideoAction(title: data.likeCount, icon: '$kIconWay/Like.png'),
          _getVideoAction(
              title: data.commentsCount, icon: '$kIconWay/Comment.png'),
          _getVideoAction(
              title: data.shereCount,
              icon: '$kIconWay/Share.png',
              isShare: true),
          // music player action
          _getMusicPlayerAction(data.songCoverImgUrl)
        ],
      ),
    );
  }
}

LinearGradient get musicGradient => LinearGradient(colors: [
      Colors.grey[800]!,
      Colors.grey[900]!,
      Colors.grey[900]!,
      Colors.grey[800]!
    ], stops: const [
      0.0,
      0.4,
      0.6,
      1.0
    ], begin: Alignment.bottomLeft, end: Alignment.topRight);

Widget _getMusicPlayerAction(String imgUrl) {
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: 49,
      height: 49,
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(11.0),
          height: 49,
          width: 49,
          decoration: BoxDecoration(
              gradient: musicGradient,
              borderRadius: BorderRadius.circular(49 / 2)),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
          ),
        ),
      ]));
}

Widget _getVideoAction({String? title, String? icon, bool isShare = false}) {
  return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: Column(children: [
        Image.asset(icon!, color: Colors.white),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title!,
            style: const TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w600,
                fontFamily: "ProximaNova",
                fontStyle: FontStyle.normal,
                fontSize: 13.0),
          ),
        )
      ]));
}

Widget _getProfileVideoAction(
    {required String pictureUrl, required bool isFollowing}) {
  return Stack(children: [
    Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: 78,
        height: 78,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(pictureUrl),
          ),
        )),
    isFollowing
        ? const SizedBox()
        : const Positioned(
            width: 15.0,
            height: 15.0,
            bottom: 8,
            left: 33,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            )),
    isFollowing
        ? const SizedBox()
        : const Positioned(
            bottom: 0,
            left: 25,
            child: Icon(Icons.add_circle,
                color: Color.fromARGB(255, 255, 43, 84), size: 30))
  ]);
}
