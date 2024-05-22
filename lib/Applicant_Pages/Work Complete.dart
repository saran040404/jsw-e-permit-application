import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkComplete extends StatefulWidget {
  @override
  _WorkCompleteState createState() => _WorkCompleteState();
}

class _WorkCompleteState extends State<WorkComplete> {

  String _permitholderNameText = '';
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Complete'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // Safety Measures Taken by Operations
                decoration: BoxDecoration(
                  color: Colors.white, // Blue color for the background
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Text(
                      '4A Permit Return - Work Complete',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.1 Permit Return by Permit Holder: Work Complete, Work Site & Equipment affect left in safe condition:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Permit holder Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.2 Permit return by Applicant:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Applicant Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.3 Permit Return by Authoriser',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Authoriser Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                // Safety Measures Taken by Operations
                decoration: BoxDecoration(
                  color: Colors.white, // Blue color for the background
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Text(
                      '4B Permit return - Work Not complete',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Permit Cancellation',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.1 Permit Return by Permit Holder: Work Not Complete, Work Site & Equipment affect left in safe condition:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Permit holder Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.2 Permit return by Applicant:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Applicant Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4.3 Permit Return by Authoriser',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Authoriser Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: fromDateController,
                              // Create a TextEditingController for "From" date
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
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
                                    DateFormat('yyyy-MM-dd')
                                        .format(pickedDate!);
                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                                                            },
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 6,
                            child: TextField(
                              controller: toTimeController,
                              // Create a TextEditingController for "To" time
                              decoration: InputDecoration(
                                icon: Icon(Icons.access_time),
                                labelText: "Time",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );

                                if (pickedTime != null) {
                                  String formattedTime =
                                      pickedTime.format(context);
                                  setState(() {
                                    toTimeController.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Submit button logic
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
