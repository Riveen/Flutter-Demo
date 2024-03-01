import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'cards_list.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    super.key,
    required this.cards,
  });

  final List<CardsList> cards;

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemWidth: 365, // Adjust the width based on screen size
      itemHeight: 200, // Adjust the height based on screen size
      loop: true,
      duration: 1600,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Align(
          alignment: Alignment.center,
          child: SizedBox(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color:
                        Colors.transparent), // Set border color to transparent
              ),
              child: cards[index], // Return the CardsList widget directly
            ),
          ),
        );
      },
      autoplay: true,
      autoplayDisableOnInteraction: true,
      itemCount: cards.length,
      layout: SwiperLayout.STACK,
    );
  }
}
