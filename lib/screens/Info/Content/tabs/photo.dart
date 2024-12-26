import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  List<String> imageList = [
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-1.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-2.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-3.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-4.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-5.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-6.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-7.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-1.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-2.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-3.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-4.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-5.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-6.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-7.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-1.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-2.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-3.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-4.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-5.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-6.jpg",
    "http://192.168.1.111:8000/asset/Destination/Eastern/KhalkhRiver/Khalkh Gol-7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          child: masonryLayout(context),
        ),
      ),
    );
  }

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: imageList.length,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(imageList[index]),
        );
      },
    );
  }
}
