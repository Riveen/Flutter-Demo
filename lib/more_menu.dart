import 'package:flutter/material.dart';
import 'Constants/button_constants.dart';
import 'btn_widget.dart';

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final buttonData in ButtonConstants.buttons[0])
              BtnWidget(
                icon: buttonData.icon,
                text: buttonData.text,
                screen: buttonData.screen,
              ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final buttonData in ButtonConstants.buttons[1])
              BtnWidget(
                icon: buttonData.icon,
                text: buttonData.text,
                screen: buttonData.screen,
              ),
          ],
        ),
        const SizedBox(height: 16), // Adjust the height as needed
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final buttonData in ButtonConstants.buttons[2])
              BtnWidget(
                icon: buttonData.icon,
                text: buttonData.text,
                screen: buttonData.screen,
              ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
