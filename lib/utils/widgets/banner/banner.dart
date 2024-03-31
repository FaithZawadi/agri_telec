import 'package:carousel_slider/carousel_slider.dart'; // Import the package
import 'package:agri_ai/utils/widgets/banner/banner_item.dart';
import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({super.key});

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  int _currentPage = 0;
  bool _isAutoScrolling = false;

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  @override
  void dispose() {
    _isAutoScrolling = false; // Stop auto-scrolling
    super.dispose();
  }

  void startAutoScroll() {
    _isAutoScrolling = true;
    Future.delayed(Duration(seconds: 3)).then((_) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_isAutoScrolling) {
        setState(() {}); // Update the UI to trigger carousel effect
        startAutoScroll(); // Continue auto-scrolling
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          initialPage: 0,
          reverse: false,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeOutCirc,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
        itemBuilder: (BuildContext context, int index, int pageViewIndex) {
          return BannerItem(index: index);
        },
      ),
    );
  }
}
