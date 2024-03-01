import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.btnFunc,
    required this.formKey,
    required this.btnTxt,
    this.txtColor,
    this.btnColor,
    this.borderRadius,
    this.btnHeight,
    this.btnWidth,
    super.key,
  });

  final formKey;
  final String btnTxt;
  final Color? txtColor;
  final Color? btnColor;
  final double? borderRadius;
  final double? btnHeight;
  final double? btnWidth;
  final Function()? btnFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: MediaQuery.of(context).size.width * btnWidth!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: btnColor,
      ),
      child: TextButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // button function
            btnFunc!();
          }
        },
        child: Text(
          btnTxt,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
