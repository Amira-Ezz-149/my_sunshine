import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_sunshine/widgets/picker_button.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime date;

  String getText() {
    if (date == null) {
      return '2021/12/01';
    } else {
      return DateFormat('yyyy/MM/dd').format(date);
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        text: getText(),
        onClicked: () => pickDate(context),
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 40),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }
}
