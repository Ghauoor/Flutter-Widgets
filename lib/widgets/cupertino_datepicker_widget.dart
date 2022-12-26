import 'package:flutter/cupertino.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  const CupertinoDatePickerWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoDatePickerWidget> createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  DateTime dateTime = DateTime(3000, 2, 1, 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoDatePicker'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newTime) {
                    setState(() {
                      dateTime = newTime;
                    });
                  },
                  initialDateTime: dateTime,
                  use24hFormat: true,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
