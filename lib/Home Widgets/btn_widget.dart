import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Home%20Widgets/more_menu_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget? screen;
  const BtnWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: OutlinedButton(
            onPressed: () {
              if (screen != null) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => screen!));
              } else if (text == "More") {
                showMoreDialog(context);
              }
            },
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(color: Colors.transparent),
              padding: const EdgeInsets.all(16.0),
              elevation: 5,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey.withOpacity(0.9),
            ),
            child: Icon(icon, color: Colors.blueAccent),
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          width: 70.0,
          height: 40.0,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  static void showMoreDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: AlertDialog(
            title: Text(
              "All Options",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            content: const MoreMenuWidget(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Close",
                  style: TextStyle(color: Color.fromARGB(255, 8, 58, 99)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
