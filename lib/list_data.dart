import 'package:flutter/material.dart';

class ListData {
  // List for date type dropdown
  List<DropdownMenuItem<String>> get dateTypeList {
    List<DropdownMenuItem<String>> dateTypes = [
      const DropdownMenuItem(value: "1", child: Text("Arriving")),
      const DropdownMenuItem(value: "2", child: Text("Arrived")),
      const DropdownMenuItem(value: "3", child: Text("On-Location"))
    ];

    return dateTypes;
  }
}
