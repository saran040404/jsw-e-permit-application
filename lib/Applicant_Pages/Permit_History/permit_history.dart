import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jsw_epermit/Applicant_Pages/Permit_History/permit_history_table.dart';

class PermitHistory extends StatefulWidget {
  @override
  _PermitHistoryState createState() => _PermitHistoryState();
}

class _PermitHistoryState extends State<PermitHistory> {
  TextEditingController DateInput = TextEditingController();
  final String _fromDate = '';
  final String _toDate = '';
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit History'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width / 6,
                      child: TextField(
                        controller: fromDateController,
                        // Create a TextEditingController for "From" date
                        decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "From Date",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100),
                          );

                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate!);
                          setState(() {
                            fromDateController.text = formattedDate;
                          });
                                                },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width / 6,
                      child: TextField(
                        controller: toDateController,
                        // Create a TextEditingController for "To" date
                        decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "To Date",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100),
                          );

                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate!);
                          setState(() {
                            toDateController.text = formattedDate;
                          });
                                                },
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => _viewPermitStatusHistory(context),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        child: Text('Search'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _viewPermitStatusHistory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PermitHistoryTable()),
    );
    // Functionality for 'Excavation Certificate' button
  }
}
