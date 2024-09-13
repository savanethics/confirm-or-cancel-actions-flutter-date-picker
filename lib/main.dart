import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(ActionsButton());

class ActionsButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActionsButtonPicker(),
    );
  }
}

class ActionsButtonPicker extends StatefulWidget {
  @override
  _ActionsButtonPickerState createState() => _ActionsButtonPickerState();
}

class _ActionsButtonPickerState extends State<ActionsButtonPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.fromLTRB(50, 150, 50, 20),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.range,
                  showActionButtons: true,
                  cancelText: 'CANCELXX',
                  confirmText: 'OK',
                  onCancel: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        'Selection Cancelled',
                      ),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                  onSubmit: (Object value) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        'Selection Confirmed',
                      ),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                ),
              ),
            ],
          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}