import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/API/api_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.textEditController,
    required this.fieldTxt,
    this.fieldColor,
    this.borderRadius,
    this.borderColor,
    required this.errorMsg,
    super.key,
  });

  final TextEditingController textEditController;
  final String errorMsg;
  final Color? fieldColor;
  final double? borderRadius;
  final String fieldTxt;
  final Color? borderColor;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String stringResponse = "NO VALUE";
  String font_family = "";
  String font_color = "";

  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse("http://13.213.157.20:8180/tmp"));
    setState(() {
      stringResponse = response.body;
      //print(stringResponse);

      //ApiData apiData = ApiData.fromJson(jsonDecode(response.body)[3]);
      //font_family = apiData.tmpValue.toString();

      font_family = "Schyler-Italic.ttf";

      ApiData apiData2 = ApiData.fromJson(jsonDecode(response.body)[11]);
      font_color = apiData2.tmpValue.toString();
    });
  }

  int hexColor(String color) {
    String newColor = "0xff" + color;
    newColor = newColor.replaceAll("#", "");
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  void initState() {
    apiCall(); //call async function.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          color: widget.fieldColor!.withOpacity(0.2),
        ),
        child: TextFormField(
            controller: widget.textEditController,
            validator: (value) {
              if (value!.isEmpty) {
                return widget.errorMsg;
              }
              return null;
            },
            onTap: () {},
            decoration: InputDecoration(
              //icon: const Icon(Icons.person),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor!)),
              label: Text(
                widget.fieldTxt,
                style: GoogleFonts.getFont(
                  'Oswald',
                  textStyle: const TextStyle(fontSize: 15.0),
                ), //oswald
              ),
            )),
      ),
    );
  }
}
