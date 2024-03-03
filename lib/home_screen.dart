import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Constants/navbar_items.dart';
import 'package:flutter_application_demo/Home%20Widgets/card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Constants/image_files.dart';
import 'Home Components/image_slider.dart';
import 'Home Widgets/menu_widget.dart';
import 'Home Widgets/swiper_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int sliderCurrentIndex = 0;
  int navCurrentIndex = 0;

  List<CardsList> cards = const [
    CardsList(bkgImagePath: 'images/back1.jpg', cardTitle: "ReQuest 101"),
    CardsList(bkgImagePath: 'images/back2.jpg', cardTitle: "ReQuest 002"),
    CardsList(bkgImagePath: 'images/back3.jpg', cardTitle: "ReQuest 105"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Center(
          child: Text(
            "Mobile TMS",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white54,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15.0),
              const Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SwiperWidget(cards: cards),
              const SizedBox(height: 20.0),
              const Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height / 100 * 2),
              const MenuWidget(),
              const SizedBox(height: 40.0),
              const ImageSlider(),
              const SizedBox(height: 8.0),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderCurrentIndex,
                  count: sliderImages.length,
                  effect: WormEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    spacing: 10.0,
                    dotColor: Colors.blueAccent.shade100,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navCurrentIndex,
        onTap: (int newIndex) {
          setState(() {
            navCurrentIndex = newIndex;
          });
        },
        items: NavbarItems.navbarItems,
      ),
    );
  }
}
