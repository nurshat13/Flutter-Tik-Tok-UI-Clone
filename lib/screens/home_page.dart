import 'package:flutter/material.dart';
import '../const.dart';
import 'video_page/video_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          // live button
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                '$kIconWay/Live.png',
                color: Colors.white,
              )),
          // search button
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  '$kIconWay/Search.png',
                  color: Colors.white,
                ))
          ],
          // tabs
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const TabBar(
                  indicatorColor: Colors.white,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0, color: Colors.white),
                    insets: EdgeInsets.symmetric(horizontal: 36.0),
                  ),
                  tabs: [
                    Tab(
                      text: 'Following',
                    ),
                    Tab(
                      text: 'For You',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // tabbar pages
        body: TabBarView(
          children: [
            // following
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: kFollowingVideoList.length,
              itemBuilder: (context, position) {
                return VideoPage(
                  data: kFollowingVideoList[position],
                );
              },
            ),
            //for you
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: kForYouVideoList.length,
              itemBuilder: (context, position) {
                return VideoPage(
                  data: kForYouVideoList[position],
                  isFollowing: false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
