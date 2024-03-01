import 'package:flutter/material.dart';

class RequestsCard extends StatelessWidget {
  const RequestsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment(0.0, 0.0),
            end: Alignment(0.987, 0.208),
            colors: [Colors.lightBlue, Colors.blue]),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
