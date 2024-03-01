import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_widget.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "All Options",
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      content: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MenuWidget(),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Close"),
        ),
      ],
    );
  }
}
