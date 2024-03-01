import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Constants/image_files.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    super.key,
  });

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int sliderCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 160,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 2),
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
    );
  }
}
