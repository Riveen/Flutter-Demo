import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class CustomDateField extends StatelessWidget {
  const CustomDateField(
      {super.key,
      required this.controller,
      required this.fieldTxt,
      required this.errorMsg,
      this.txtColor,
      this.fieldColor,
      this.borderColor,
      this.fieldHeight,
      this.borderRadius,
      this.textSize});

  final TextEditingController controller;
  final String fieldTxt;
  final String errorMsg;
  final Color? txtColor;
  final Color? fieldColor;
  final Color? borderColor;
  final double? fieldHeight;
  final double? borderRadius;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: fieldHeight,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: fieldColor!.withOpacity(0.2),
        ),
        child: StatefulBuilder(
          builder: (BuildContext context, setState) {
            return TextFormField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return errorMsg;
                }
                return null;
              },
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null) {
                  setState(() {
                    controller.text =
                        DateFormat("yyyy-MM-dd").format(pickedDate);
                  });
                }
              },
              decoration: InputDecoration(
                //icon: const Icon(Icons.person),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor!)),
                label: Text(
                  fieldTxt,
                  style: TextStyle(color: txtColor, fontSize: textSize),
                ),
              ),
            );
          },
        ));
  }
}

class CustomDateFieldV2 extends StatelessWidget {
  const CustomDateFieldV2(
      {super.key,
      required this.controller,
      required this.fieldTxt,
      required this.errorMsg,
      this.txtColor,
      this.fieldColor,
      this.borderColor,
      this.fieldHeight,
      this.borderRadius,
      this.textSize});

  final TextEditingController controller;
  final String fieldTxt;
  final String errorMsg;
  final Color? txtColor;
  final Color? fieldColor;
  final Color? borderColor;
  final double? fieldHeight;
  final double? borderRadius;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: fieldHeight,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: fieldColor!.withOpacity(0.2),
        ),
        child: StatefulBuilder(
          builder: (BuildContext context, setState) {
            return TextFormField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return errorMsg;
                }
                return null;
              },
              onTap: () async {
                DateTime? dateTime = await showOmniDateTimePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate:
                      DateTime(1600).subtract(const Duration(days: 3652)),
                  lastDate: DateTime.now().add(
                    const Duration(days: 3652),
                  ),
                  is24HourMode: false,
                  isShowSeconds: false,
                  minutesInterval: 1,
                  secondsInterval: 1,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  constraints: const BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 650,
                  ),
                  transitionBuilder: (context, anim1, anim2, child) {
                    return FadeTransition(
                      opacity: anim1.drive(
                        Tween(
                          begin: 0,
                          end: 1,
                        ),
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 200),
                  barrierDismissible: true,
                  selectableDayPredicate: (dateTime) {
                    // Disable before today
                    if (dateTime.isBefore(DateTime(DateTime.now().year,
                        DateTime.now().month, DateTime.now().day))) {
                      return false;
                    } else {
                      return true;
                    }
                  },
                );

                if (dateTime != null) {
                  setState(() {
                    controller.text =
                        DateFormat("yyyy-MM-dd  HH:mm:ss").format(dateTime);
                  });
                }
              },
              decoration: InputDecoration(
                //icon: const Icon(Icons.person),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor!)),
                label: Text(
                  fieldTxt,
                  style: TextStyle(color: txtColor, fontSize: textSize),
                ),
              ),
            );
          },
        ));
  }
}
