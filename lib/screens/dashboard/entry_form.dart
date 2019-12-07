import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EntryForm extends StatefulWidget {
  @override
  _EntryFormState createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {

  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                      return null;
                    },
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Row(
                  children: <Widget>[
                    FlatButton.icon(
                      onPressed: () => _selectDate(context),
                      label: Text(
                        "${DateFormat('MM - dd - yyyy').format(selectedDate)}",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.indigo),
                      ),
                      icon: Icon(Icons.calendar_today, color: Colors.indigo),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('-')
                    ),
                  ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }


  // Date Selector
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 1, 1),
        lastDate: DateTime(2019, 12, 31));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}





