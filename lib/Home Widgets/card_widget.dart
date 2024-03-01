import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsList extends StatelessWidget {
  const CardsList(
      {super.key, required this.bkgImagePath, required this.cardTitle});

  final String cardTitle;
  final String bkgImagePath;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 160.0,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bkgImagePath), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      cardTitle,
                      style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Flexible(
                      child: Text(
                        "<<Details included here in brief>>",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
