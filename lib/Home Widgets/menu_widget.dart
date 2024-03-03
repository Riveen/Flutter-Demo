import 'package:flutter/material.dart';
import '../Constants/button_constants.dart';
import 'btn_widget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

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
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < (ButtonConstants.buttons[2].length) - 1; i++)
              BtnWidget(
                icon: ButtonConstants.buttons[2][i].icon,
                text: ButtonConstants.buttons[2][i].text,
                screen: ButtonConstants.buttons[2][i].screen,
              ),
            const BtnWidget(
              icon: Icons.more_horiz_rounded,
              text: "More",
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
