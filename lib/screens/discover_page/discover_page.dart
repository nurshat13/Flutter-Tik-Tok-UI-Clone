import 'package:flutter/material.dart';

import '../../const.dart';
import 'widgets/carusel.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // search text field
        title: SizedBox(
          height: 40,
          child: TextField(
            style: const TextStyle(
                color: Color(0xff8a8b8f),
                fontWeight: FontWeight.w400,
                fontFamily: "ProximaNova2",
                fontStyle: FontStyle.normal,
                fontSize: 14.2),
            decoration: InputDecoration(
              filled: true,
              contentPadding: const EdgeInsets.only(top: 15),
              fillColor: const Color(0xffF1F1F3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide.none,
              ),
              prefixIcon: ImageIcon(
                AssetImage(
                  '$kIconWay/Search.png',
                ),
                color: Colors.black,
              ),
              hintText: "Search",
            ),
          ),
        ),
        // scan button
        actions: [
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('$kIconWay/Scan.png'),
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          carusel,
          getTrandingHasgtags(
            hastag: 'anime',
            trandingHashtag: 'Tranding Hashtag',
            useCount: '804.2B',
            videos: kAnimeHashtag,
          ),
          getTrandingHasgtags(
            hastag: 'cosplay',
            trandingHashtag: 'Tranding Hashtag',
            useCount: '112.8B',
            videos: kCosplayHashtag,
          ),
          getTrandingHasgtags(
            hastag: 'nba',
            trandingHashtag: 'Tranding Hashtag',
            useCount: '74.9B',
            videos: kNbaHashtag,
          ),
        ],
      )),
    );
  }
}


Widget getTrandingHasgtags(
        {required String hastag,
        required String trandingHashtag,
        required String useCount,
        required List videos}) =>
    Column(
      children: [
        // top info
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            children: [
              // Hashtag icon
              CircleAvatar(
                backgroundColor: const Color.fromARGB(12, 0, 0, 0),
                radius: 21,
                child: CircleAvatar(
                  child: Image.asset('$kIconWay/Hashtag.png'),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              // title and subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hashtag name
                  Text(hastag,
                      style: const TextStyle(
                          color: Color(0xff151923),
                          fontWeight: FontWeight.w600,
                          fontFamily: "ProximaNova2",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.1),
                      textAlign: TextAlign.left),
                  // Trending hashtag
                  Text(trandingHashtag,
                      style: const TextStyle(
                          color: Color(0xff8a8b8f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "ProximaNova2",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.3),
                      textAlign: TextAlign.left)
                ],
              ),
              const Expanded(child: SizedBox()),
              // button
              Container(
                padding: const EdgeInsets.only(
                    left: 12, top: 3, bottom: 3, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xffF1F1F2),
                ),
                child: Row(
                  children: [
                    // 0
                    Text(
                      useCount,
                      style: const TextStyle(
                          color: Color(0xff151923),
                          fontWeight: FontWeight.w600,
                          fontFamily: "ProximaNova2",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.3),
                    ),
                    ImageIcon(AssetImage('$kIconWay/Show-more.png')),
                  ],
                ),
              )
            ],
          ),
        ),
        // listView
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: videos.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Container(
                width: 110,
                margin: EdgeInsets.only(right: 3, left: index == 0 ? 15 : 0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(videos[index]),
                        fit: BoxFit.fitWidth)),
              );
            }),
          ),
        )
      ],
    );
