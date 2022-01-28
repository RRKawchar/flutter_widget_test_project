import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({Key? key}) : super(key: key);

  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;
  getDate() async {
    DateTime? date = await showDatePicker(
        context: (context),
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date!;
    });
  }

  getTime() async {
    TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay = timeOfDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dateTime == null
                  ? Text('Coose date')
                  : Text(
                      'Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}',
                      style: TextStyle(fontSize: 40),
                    ),
              RaisedButton(
                onPressed: () {
                  getDate();
                },
                child: Text('TimePicker'),
              ),
              SizedBox(
                height: 20,
              ),
              _timeOfDay == null
                  ? Text('Coose Time')
                  : Text(
                      '${_timeOfDay!.hour}.${_timeOfDay!.minute}',
                      style: TextStyle(fontSize: 40),
                    ),
              RaisedButton(onPressed: () {
                getTime();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
