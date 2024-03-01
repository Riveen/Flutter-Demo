import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class OptionsList extends GetxController {
  List<String> options = [
    "Arriving",
    "Arrived",
    "Waiting",
    "Nearby",
    "Far Away",
    "On-hold",
    "Held-on-Loc",
    "Back-to-Back",
    "Wide-Range",
    "Slower than usual",
    "Delayed",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
  ];
  Rx<List<String>> selectedOptionsList = Rx<List<String>>([]);
  var selectedOption = "".obs;

  List<String> getOptionsList() {
    return options;
  }

  List<ValueItem> options2 = const <ValueItem>[
    ValueItem(label: 'Arriving', value: '1'),
    ValueItem(label: 'Arrived', value: '2'),
    ValueItem(label: 'Delayed', value: '3'),
    ValueItem(label: 'Near-by', value: '4'),
    ValueItem(label: 'Slower than Usual ', value: '5'),
    ValueItem(label: 'Item 1', value: '6'),
    ValueItem(label: 'Item 2', value: '7'),
    ValueItem(label: 'Item 3', value: '8'),
  ];
  Rx<List<ValueItem>> selectedOptionsList2 = Rx<List<ValueItem>>([]);
  var selectedOption2 = "".obs;

  List<ValueItem> getOptionsList2() {
    return options2;
  }
}
