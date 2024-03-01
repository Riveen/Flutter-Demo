import 'package:flutter/material.dart';
import 'package:flutter_application_demo/options_list.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class CustomDropDownV2 extends StatelessWidget {
  CustomDropDownV2({
    super.key,
    required this.fieldTxt,
    required this.value,
    required this.errorMsg,
    this.borderColor,
    this.borderRadius,
    this.txtColor,
    this.txtSize,
  });

  final String value;
  final String fieldTxt;
  final String errorMsg;
  final Color? borderColor;
  final double? borderRadius;
  final Color? txtColor;
  final double? txtSize;

  final MultiSelectController controller = MultiSelectController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 55.0,
          width: 386.0,
          child: MultiSelectDropDown(
            searchEnabled: true,
            showClearIcon: true,
            controller: controller,
            onOptionSelected: (options) {
              debugPrint(options.toString());
            },
            options: OptionsList().getOptionsList2(),
            maxItems: 100,
            selectionType: SelectionType.multi,
            chipConfig: ChipConfig(
                wrapType: WrapType.scroll,
                backgroundColor: Colors.grey.withOpacity(0.2),
                labelColor: Colors.grey,
                deleteIconColor: Colors.grey),
            selectedOptionTextColor: Colors.deepOrange,
            hint: fieldTxt,
            hintFontSize: txtSize,
            hintColor: txtColor,
            borderRadius: borderRadius,
            borderWidth: 1.2,
            borderColor: borderColor,
            //fieldBackgroundColor: formTxtFieldColor(),
            optionTextStyle: const TextStyle(fontSize: 16),
            selectedOptionIcon: const Icon(Icons.check_circle),
          ),
        ),
      ),
      // child: SizedBox(
      //     height: 55.0,
      //     child: DropDownMultiSelect(
      //       decoration: InputDecoration(
      //         border: OutlineInputBorder(
      //             borderSide: BorderSide(color: borderColor!)),
      //       ),
      //       options: OptionsList().getOptionsList(),
      //       whenEmpty: "Date Type",
      //       onChanged: (value) {
      //         OptionsList().selectedOptionsList.value = value;
      //         OptionsList().selectedOption.value = "";
      //         OptionsList().selectedOptionsList.value.forEach((element) {
      //           OptionsList().selectedOption.value =
      //               OptionsList().selectedOption.value + "" + element;
      //         });
      //       },
      //       selectedValues: OptionsList().selectedOptionsList.value,
      //     )),
    );
  }
}
