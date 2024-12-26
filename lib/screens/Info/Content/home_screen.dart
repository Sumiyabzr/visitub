import 'package:flutter/material.dart';
import 'package:visitub/screens/Info/Content/tabs/creator.dart';
import 'package:visitub/screens/Info/Content/tabs/photo.dart';
import 'package:visitub/screens/Info/Content/tabs/video.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  // Tabs
  final List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.video_chat_outlined,
        color: Colors.blue,
      ),
      text: 'Video',
    ),
    Tab(
      icon: Icon(
        Icons.photo_camera_outlined,
        color: Colors.blue,
      ),
      text: 'Photos',
    ),
    Tab(
      icon: Icon(
        Icons.create_outlined,
        color: Colors.blue,
      ),
      text: 'Creators',
    )
  ];

  final List<Widget> tabBarViews = [
    VideoView(),
    PhotoView(),
    CreatorView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Content',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              )),
        ),
        body: Column(
          children: [
            TabBar(
                isScrollable: false,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.shade400,
                tabs: tabs),
            Expanded(child: TabBarView(children: tabBarViews))
          ],
        ),
      ),
    );
  }
}
