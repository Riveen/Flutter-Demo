import 'package:flutter/material.dart';
import 'package:flutter_application_demo/transport_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../button_data.dart';
import '../menu_widget.dart';

class ButtonConstants {
  static List<List<BtnData>> buttons = [
    [
      BtnData(icon: Icons.done, text: "Request Approved"),
      BtnData(icon: Icons.book_outlined, text: "Request History"),
      BtnData(icon: Icons.wallet_giftcard, text: "All Arrivals"),
      BtnData(
          icon: Icons.supervised_user_circle_outlined, text: "Job Confirm."),
    ],
    [
      BtnData(icon: Icons.car_repair, text: "Vehicle Assign."),
      BtnData(
          icon: Icons.fire_truck,
          text: "My Transport",
          screen: const TransportPage()),
      BtnData(icon: Icons.my_library_books, text: "Create Request"),
      BtnData(icon: Icons.car_rental, text: "Vehicle Mgmt."),
    ],
    [
      BtnData(
        icon: Icons.laptop,
        text: "Employee Mgmt.",
      ),
      BtnData(
        icon: Icons.check_box_outlined,
        text: "Confirmation",
      ),
      BtnData(
        icon: Icons.auto_graph_outlined,
        text: "Financial Summary",
      ),
    ],
    [
      BtnData(
        icon: Icons.do_not_disturb_alt_outlined,
        text: "Blacklist",
      ),
      BtnData(
        icon: Icons.construction_outlined,
        text: "Breakdown",
      ),
    ],
  ];

  void showMoreDialog(BuildContext context) {
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
            content: const MenuWidget(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close"),
              ),
            ],
          ),
        );
      },
    );
  }
}
