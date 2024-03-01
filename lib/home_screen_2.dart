import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  final List<String> sliderImages = [
    "images/image01.png",
    "images/image02.jpg",
    "images/image03.jpg",
    "images/image04.jpg",
  ];

  int sliderCurrentIndex = 0;

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
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15.0),
              const Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Container(
                height: size.height * 0.3,
                child: CarouselSlider.builder(
                  itemCount: sliderImages.length,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 16 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        sliderCurrentIndex = index;
                      });
                    },
                  ),
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        sliderImages[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildMenuItem(Icons.done, "Request Approved", () {}),
                  _buildMenuItem(Icons.book_outlined, "Request History", () {}),
                  _buildMenuItem(Icons.wallet_giftcard, "All Arrivals", () {}),
                  _buildMenuItem(Icons.supervised_user_circle_outlined,
                      "Job Confirm", () {}),
                  _buildMenuItem(Icons.car_repair, "Vehicle Assign", () {}),
                  _buildMenuItem(Icons.fire_truck, "My Transport", () {}),
                  _buildMenuItem(
                      Icons.my_library_books, "Create Request", () {}),
                  _buildMenuItem(Icons.car_rental, "Vehicle Mgmt", () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String text, VoidCallback onPressed) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.blueAccent),
              const SizedBox(height: 8),
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
