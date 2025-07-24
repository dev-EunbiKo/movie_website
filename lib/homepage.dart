import 'package:flutter/material.dart';
import 'package:movie_website/screen/list_title.dart';
import 'package:movie_website/screen/skeleton_loading/carousel_skeleton.dart';
import 'package:movie_website/screen/skeleton_loading/now_skeleton.dart';
import 'package:movie_website/screen/skeleton_loading/popular_skeleton.dart';

import 'package:movie_website/widget/icon_searchbar.dart';
import 'package:movie_website/widget/main_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IconSearchbar(),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTitle(title: "Top Rated Movies"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CarouselSkeleton(),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ListTitle(title: "Now Playing"), NowSkeleton()],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ListTitle(title: "Explore Popular Movies"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double gridviewHeight = (constraints.maxWidth / 5) * 1.3 * 4;
                  return SizedBox(
                    height: gridviewHeight,
                    child: PopularSkeleton(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
