import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClosureofroadCertificate extends StatefulWidget {
  @override
  _ClosureofroadCertificateState createState() =>
      _ClosureofroadCertificateState();
}

class _ClosureofroadCertificateState extends State<ClosureofroadCertificate> {
  String _certificateNumber = '';
  String _permitNumber = '';
  final String _Date = '';
  String _Plant = '';
  String _Equipment = '';
  String _ContractorName = '';
  String _WorkerNo = '';
  bool _AlternateRoute = false;
  String AlternateRoute = '';
  bool _TemporaryBarricade = false;
  bool _physicalbarricade = false;
  bool _WarningSign = false;
  bool _Farok = false;
  bool _Farnotok = false;
  String _FsuggestAlternate = '';
  bool _Sarok = false;
  bool _Sarnotok = false;
  String _SsuggestAlternate = '';
  TextEditingController toTimeController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  final String _Time = '';
  String _Fname = '';
  String _Sname = '';
  final String _Fsign = '';
  final String _Ssign = '';
  String _AdditionalPrecautions = '';
  final String _PermitDate = '';
  String _PermitTime = '';
  String _Adesignation = '';
  String _Aname = '';
  final String _Asign = '';
  String _Audesignation = '';
  String? _Auname;
  final String _Ausign = '';
  String _Pdesignation = '';
  String _Pname = '';
  final String _Psign = '';
  final String _location = '';
  final String _RadiographyReason = '';
  final String _Make = '';
  final String _Type = '';
  final String _voltage = '';
  final bool _isSealed = false;
  final bool _isUnsealed = false;
  final String _totalActivity = '';
  final String _halfLife = '';
  final String _Isotope = '';
  final bool _isAlpha = false;
  final bool _isBeta = false;
  final bool _isGamma = false;
  final bool _isNeutron = false;
  final String _Precautions = '';
  final String _applicantSign = '';
  final String _applicantName = '';
  final String _authorizationSign = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Closure of roads Certificate'),
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
                        'THIS IS NOT A PERMIT TO WORK',
                        style: TextStyle(
                          fontSize: 19.7,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    _certificateNumber = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Certificate No',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Expanded(
                            child: SizedBox(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    _permitNumber = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Permit No',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                        'A) Plant/Area:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Plant = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Equipment Tag No:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Equipment = value;
                          });
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name of the contractor:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _ContractorName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'No of workers:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _WorkerNo = value;
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
                      SizedBox(height: 10.0),
                      Text(
                        'B) Precautions Taken',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      CheckboxListTile(
                        title: Text(
                            'Alternate route for the traffic arranged, please sepcify'),
                        value: _AlternateRoute,
                        onChanged: (value) {
                          setState(() {
                            _AlternateRoute = value!;
                          });
                        },
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            AlternateRoute = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      CheckboxListTile(
                        title:
                            Text('Temporarily barricade using caution tapes.'),
                        value: _TemporaryBarricade,
                        onChanged: (value) {
                          setState(() {
                            _TemporaryBarricade = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Physically barricade using pipes/rod.'),
                        value: _physicalbarricade,
                        onChanged: (value) {
                          setState(() {
                            _physicalbarricade = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text(
                            'Warning signs installed 50M, 100M & 150 M (road diversion, men at work, night lamp, etc.) '),
                        value: _WarningSign,
                        onChanged: (value) {
                          setState(() {
                            _WarningSign = value!;
                          });
                        },
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
                        'C) Clearances by other departments',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '1. Fire department',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Alternate route indicated is,',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Okay'),
                              value: true,
                              groupValue: _Farok,
                              onChanged: (value) {
                                setState(() {
                                  _Farok = value!;
                                  _Farnotok =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Not Okay'),
                              value: true,
                              groupValue: _Farnotok,
                              onChanged: (value) {
                                setState(() {
                                  _Farnotok = value!;
                                  _Farok =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'If not ok, suggest for alternate route:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _FsuggestAlternate = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '2. Security Department',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Alternate route indicated is',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Okay'),
                              value: true,
                              groupValue: _Sarok,
                              onChanged: (value) {
                                setState(() {
                                  _Sarok = value!;
                                  _Sarnotok =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Not Okay'),
                              value: true,
                              groupValue: _Sarnotok,
                              onChanged: (value) {
                                setState(() {
                                  _Sarnotok = value!;
                                  _Sarok =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'If not ok, suggest for alternate route:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _SsuggestAlternate = value;
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
                      SizedBox(height: 10.0),
                      Text(
                        'Fire Dept',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Fname = value;
                          });
                        },
                        decoration: InputDecoration(
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
                        'Security Dept',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Sname = value;
                          });
                        },
                        decoration: InputDecoration(
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
                        'D) Additional precautions / special instructions:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _AdditionalPrecautions = value;
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
                      SizedBox(height: 10.0),
                      Text(
                        'E) Authoriser and Applicant:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Certify that the precautions are fulfilled, work sitè, equipment are ready and safe for the job. Permit is valid upto',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  _PermitTime = value;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: 'Time (In hrs)',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
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
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'unless extended as per section F.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Applicant',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Designation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Adesignation = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
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
                        'Authorised by',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Designation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Audesignation = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Authoriser Name',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                        'Permit Holder',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Designation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Pdesignation = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Pname = value;
                          });
                        },
                        decoration: InputDecoration(
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
                        'F) Extension of validity',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '(to be renewed everyday. Max. Validity - 7 days)',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Conditions checked and the permit is revalidated as under:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extension 1',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'Extension 2',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'Extension 3',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'Extension 4',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'Extension 5',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'Extension 6',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Extended by Applicant',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Accepted by Authoriser',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                      SizedBox(height: 10.0),
                      Text(
                        'Extended up to',
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
                        'G) Job completion and closure of permit:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Job is completed and we have inspected the site and found the area cleared of men and material Permit is hereby closed.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Applicant',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Aname = value;
                          });
                        },
                        decoration: InputDecoration(
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
                        'Authoriser',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Authoriser Name',
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
                                _Auname = value!;
                              });
                            },
                            selectedItem: _Auname,
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
                        'Permit Holder',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Pname = value;
                          });
                        },
                        decoration: InputDecoration(
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
