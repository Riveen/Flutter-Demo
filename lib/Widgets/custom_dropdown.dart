import 'package:flutter/material.dart';
import 'package:flutter_application_demo/options_list.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.fieldTxt,
    required this.value,
    required this.errorMsg,
    this.borderColor,
    this.txtColor,
    this.txtSize,
  });

  final String value;
  final String fieldTxt;
  final String errorMsg;
  final Color? borderColor;
  final Color? txtColor;
  final double? txtSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 55.0,
          width: 386.0,
          child: ListView(
            children: [
              DropdownSearch<String>(
                selectedItem: OptionsList().selectedOption.value,
                items: OptionsList().getOptionsList(),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor!)),
                      labelText: fieldTxt,
                      labelStyle: TextStyle(height: txtSize)),
                ),
                onChanged: print,
                popupProps: const PopupPropsMultiSelection.menu(
                  showSearchBox: true,
                  showSelectedItems: true,
                ),
                compareFn: (item, selectedItem) {
                  return item == selectedItem;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
