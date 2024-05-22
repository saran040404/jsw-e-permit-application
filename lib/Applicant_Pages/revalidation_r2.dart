import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Renewal2 extends StatefulWidget {
  @override
  _Renewal2State createState() => _Renewal2State();
}

class _Renewal2State extends State<Renewal2> {
  String _holderName = '';
  String _applicantName = '';
  final String _fromDate = '';
  final String _toDate = '';
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  final String _fromTime = '';
  final String _toTime = '';
  String? _selectedAuthorizationName;
  bool _Height = false;
  bool _Confined = false;
  bool _Electrical = false;
  bool _LOTO = false;
  bool _Heavy = false;
  bool _Radiography = false;
  bool _Excavation = false;
  bool _Road = false;
  bool _Scaffolding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit Revalidation 2'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16.0), // Add padding to the container
                // Application and Work Description
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.0),
                      Text(
                        'RENEWAL - 2',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Permit Applicant',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _applicantName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Permit Holder',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _holderName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(16.0), // Add padding to the container
                // Application and Work Description
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.0),
                      Text(
                        'Permit Authoriser',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Permit Validity',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Date',
                        style: TextStyle(fontSize: 16.0),
                      ),
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
                                  DateFormat('yyyy-MM-dd')
                                      .format(pickedDate!);
                                  setState(() {
                                    toDateController.text = formattedDate;
                                  });
                                                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Time:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                controller: fromTimeController,
                                // Create a TextEditingController for "From" time
                                decoration: InputDecoration(
                                  icon: Icon(Icons.access_time),
                                  labelText: "From Time",
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
                                      fromTimeController.text = formattedTime;
                                    });
                                  }
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
                                  labelText: "To Time",
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
                        'Authoriser Name:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      SizedBox(
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: DropdownSearch<String>(
                            items: <String>[
                              'John Doe',
                              'Jane Smith',
                              'Michael Johnson',
                              'Emily Brown',
                              // Add more names here...
                            ],
                            onChanged: (String? value) {
                              setState(() {
                                _selectedAuthorizationName = value!;
                              });
                            },
                            selectedItem: _selectedAuthorizationName,
                            popupProps: const PopupProps.menu(
                              showSelectedItems: true,
                              showSearchBox: true,
                            ),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration.collapsed(
                                hintText: 'Select Name',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(16.0), // Add padding to the container
                // Application and Work Description
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        'Certificates',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text('Work at height'),
                        value: _Height,
                        onChanged: (value) {
                          setState(() {
                            _Height = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Confined space'),
                        value: _Confined,
                        onChanged: (value) {
                          setState(() {
                            _Confined = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Electrical'),
                        value: _Electrical,
                        onChanged: (value) {
                          setState(() {
                            _Electrical = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('LOTO'),
                        value: _LOTO,
                        onChanged: (value) {
                          setState(() {
                            _LOTO = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Heavy lift/Pick &Carry'),
                        value: _Heavy,
                        onChanged: (value) {
                          setState(() {
                            _Heavy = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Radiography'),
                        value: _Radiography,
                        onChanged: (value) {
                          setState(() {
                            _Radiography = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Excavation'),
                        value: _Excavation,
                        onChanged: (value) {
                          setState(() {
                            _Excavation = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Road closure'),
                        value: _Road,
                        onChanged: (value) {
                          setState(() {
                            _Road = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Scaffolding'),
                        value: _Scaffolding,
                        onChanged: (value) {
                          setState(() {
                            _Scaffolding = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
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
