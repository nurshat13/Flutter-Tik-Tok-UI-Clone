import 'package:flutter/material.dart';
import 'package:tik_tok_ui_clone/screens/profile_page/widgets/user_buttons.dart';
import 'package:tik_tok_ui_clone/screens/profile_page/widgets/user_info.dart';
import '../../../const.dart';
import 'app_bar.dart';

Widget get tabBar => DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            // profile
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Column(children: [
                appBar,
                userInfo,
                buttons,
              ]),
            ])),
            // tabs
            SliverPersistentHeader(
                pinned: true,
                delegate: _StickyTabBarDelegate(
                  TabBar(
                    indicatorColor: Colors.black,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      insets: EdgeInsets.symmetric(horizontal: 36.0),
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        icon: ImageIcon(
                          AssetImage('$kIconWay/Grid.png'),
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: ImageIcon(
                          AssetImage('$kIconWay/Private-Like.png'),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )),
          ];
        },
        // tabBar pages
        body: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: TabBarView(
            children: [
              // TikTok's
              GridView.builder(
                  itemCount: kUserTikToks.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(kUserTikToks[index]),
                              fit: BoxFit.fitWidth)),
                    );
                  }),
              //Liked TikTok's
              GridView.builder(
                  itemCount: kUserLikedTikToks.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(kUserLikedTikToks[index]),
                              fit: BoxFit.fitWidth)),
                    );
                  }),
            ],
          ),
        ),
      ),
    );

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
