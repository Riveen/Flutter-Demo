import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Constants/image_files.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int sliderCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Get screen size
    Size screenSize = MediaQuery.of(context).size;

    // Calculate width and height based on screen size
    double sliderWidth = screenSize.width * 0.9;
    double sliderHeight = screenSize.height * 0.2;

    return Container(
      width: sliderWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: sliderHeight, //160
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 4),
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 16 / 9,
          onPageChanged: (index, reason) {
            setState(() {
              sliderCurrentIndex = index;
            });
          },
        ),
        items: sliderImages,
      ),
    );
  }
}
