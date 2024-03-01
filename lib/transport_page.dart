import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Constants/styles.dart';
import 'package:flutter_application_demo/Widgets/custom_buttons.dart';
import 'package:flutter_application_demo/Widgets/custom_date_fields.dart';
import 'package:flutter_application_demo/Widgets/custom_text_fields.dart';

import 'Widgets/custom_dropdown.dart';
import 'Widgets/custom_dropdown_v2.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  // text editing controllers
  final requestID = TextEditingController();
  final transporter = TextEditingController();
  final vehicle = TextEditingController();
  final driver = TextEditingController();
  final fromDate = TextEditingController();
  final toDate = TextEditingController();

  // form validation
  final String errorMsg = "This field is required.";

  // form key
  final formKey = GlobalKey<FormState>();

  // static dropdown default value
  final value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: appBarTheme(),
        backgroundColor: appBarColor(),
        title: appBarTitle(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  // request id field
                  CustomTextField(
                    textEditController: requestID,
                    fieldTxt: "Request ID",
                    errorMsg: errorMsg,
                    borderRadius: fieldBorderRadius(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                  ),
                  // dropdown field for select
                  CustomDropDown(
                    fieldTxt: "--SELECT--",
                    value: value,
                    errorMsg: errorMsg,
                    borderColor: fieldBorderColor(),
                    txtColor: fieldTextColor(),
                    txtSize: textFieldTxtSize(),
                  ),
                  // date type field
                  CustomDropDownV2(
                    fieldTxt: "Date Type",
                    value: value,
                    errorMsg: errorMsg,
                    borderColor: fieldBorderColor(),
                    borderRadius: dropDownFieldBorderRadius(),
                    txtColor: fieldTextColor(),
                    txtSize: textFieldTxtSize(),
                  ),
                  // from date field
                  CustomDateFieldV2(
                    fieldTxt: "From Date",
                    controller: fromDate,
                    errorMsg: errorMsg,
                    txtColor: fieldTextColor(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                    fieldHeight: 60.0,
                    borderRadius: fieldBorderRadius(),
                    textSize: textFieldTxtSize(),
                  ),
                  // to date field
                  CustomDateField(
                    fieldTxt: "To Date",
                    controller: toDate,
                    errorMsg: errorMsg,
                    txtColor: fieldTextColor(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                    fieldHeight: 60.0,
                    borderRadius: fieldBorderRadius(),
                    textSize: textFieldTxtSize(),
                  ),
                  // pick customer field
                  CustomDropDownV2(
                    fieldTxt: "Pick Customer",
                    value: value,
                    errorMsg: errorMsg,
                    borderColor: fieldBorderColor(),
                    borderRadius: dropDownFieldBorderRadius(),
                    txtColor: fieldTextColor(),
                    txtSize: textFieldTxtSize(),
                  ),
                  // "" field
                  IgnorePointer(
                    child: CustomDropDownV2(
                      fieldTxt: "Pick Shipper/Plant",
                      value: value,
                      errorMsg: errorMsg,
                      borderColor: fieldBorderColor(),
                      borderRadius: dropDownFieldBorderRadius(),
                      txtColor: fieldTextColor(),
                      txtSize: textFieldTxtSize(),
                    ),
                  ),
                  // transporter field
                  CustomTextField(
                    textEditController: transporter,
                    fieldTxt: "Transporter",
                    errorMsg: errorMsg,
                    borderRadius: fieldBorderRadius(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                  ),
                  // vehicle field
                  CustomTextField(
                    textEditController: vehicle,
                    fieldTxt: "Vehicle",
                    errorMsg: errorMsg,
                    borderRadius: fieldBorderRadius(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                  ),
                  // driver field
                  CustomTextField(
                    textEditController: driver,
                    fieldTxt: "Driver",
                    errorMsg: errorMsg,
                    borderRadius: fieldBorderRadius(),
                    fieldColor: formTxtFieldColor(),
                    borderColor: fieldBorderColor(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        // SEARCH button
                        child: CustomButton(
                          btnFunc: () {},
                          formKey: formKey,
                          btnTxt: "SEARCH",
                          btnColor: formBtnColor(),
                          btnHeight: 40.0,
                          btnWidth: 0.2,
                          borderRadius: 5.0,
                          txtColor: formBtnTxtColor(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
