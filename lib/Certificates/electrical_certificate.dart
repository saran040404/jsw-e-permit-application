import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ElectricalCertificate extends StatefulWidget {
  @override
  _ElectricalCertificateState createState() => _ElectricalCertificateState();
}

class _ElectricalCertificateState extends State<ElectricalCertificate> {
  String _certificateNumber = '';
  String _permitNumber = '';
  bool _isColdWork = false;
  bool _isHotWork = false;
  TextEditingController toDateController = TextEditingController();
  String? _selectedDepartment;
  String? _selectedLocation;
  bool _isCustomLocation = false;
  final TextEditingController _customLocationController = TextEditingController();
  String? _selectedDIC;
  bool _isCustomDIC = false;
  final TextEditingController _customDICController = TextEditingController();

  String? _selectedAuthorizationName;
  String? _isSwitchPutOff;
  String? _isPowerFuseRemoved;
  String? _isControlFuseRemoved;
  String? _isBreakerRackedOut;
  String? _isOperateTagProvided;
  String? _isCableEarthed;
  String? _isEarthContinuity;
  String? _isUseElectricGloves;
  String? _isOther;
  String? _TagNo;
  String? _Other;

  String? _SpecialInstructions;
  final TextEditingController _customTimeController = TextEditingController();
  String? _selectedTime;
  bool _isCustomTime = false;
  TextEditingController toTimeController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  String? _Holder;
  final String _Date = '';
  String _Plant = '';
  String _Equipment = '';
  String _Details = '';
  String _Contractors = '';
  String _Workers = '';
  final String _Time = '';
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
  String _applicantName = '';
  final String _authorizationSign = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electrical Certificate'),
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
                          SizedBox(width: 5.0),
                          Expanded(
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
                        ],
                      ),
                      SizedBox(height: 16.0),
                      // Add some spacing between the rows
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              title: Text('Cold Work'),
                              value: true,
                              groupValue: _isColdWork,
                              onChanged: (value) {
                                setState(() {
                                  _isColdWork = value!;
                                  _isHotWork = false;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              title: Text('Hot Work'),
                              value: true,
                              groupValue: _isHotWork,
                              onChanged: (value) {
                                setState(() {
                                  _isHotWork = value!;
                                  _isColdWork = false;
                                });
                              },
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
                        'Equipment Tag No',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Equipment = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Details of job',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Details = value;
                          });
                        },
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Contractor Name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Contractors = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'No of workers',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Workers = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 20),
                      _isCustomDIC
                          ? Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _customDICController,
                                    onChanged: (String value) {
                                      setState(() {
                                        _selectedDIC = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter custom DIC',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isCustomDIC = false;
                                      _selectedDIC = null;
                                    });
                                  },
                                  icon: Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 40,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownSearch<String>(
                                  popupProps: const PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  items: [
                                    "DIC 1",
                                    "DIC 2",
                                    "DIC 3",
                                    "DIC 4",
                                    "DIC 5",
                                    'Custom DIC',
                                  ],
                                  dropdownDecoratorProps:
                                      DropDownDecoratorProps(
                                    dropdownSearchDecoration:
                                        InputDecoration.collapsed(
                                      hintText: 'Select DIC',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  onChanged: (String? value) {
                                    setState(() {
                                      if (value == 'Custom DIC') {
                                        _isCustomDIC = true;
                                      } else {
                                        _isCustomDIC = false;
                                        _selectedDIC = value!;
                                      }
                                    });
                                  },
                                  selectedItem: _selectedDIC,
                                ),
                              ),
                            ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: DropdownSearch<String>(
                                  items: <String>[
                                    'Dept 1',
                                    'Dept 2',
                                    'Dept 3',
                                    'Dept 4',
                                    'Dept 5',
                                  ],
                                  onChanged: (String? value) {
                                    setState(() {
                                      _selectedDepartment = value;
                                    });
                                  },
                                  selectedItem: _selectedDepartment,
                                  popupProps: const PopupProps.menu(
                                    showSelectedItems: true,
                                    showSearchBox: true,
                                  ),
                                  dropdownDecoratorProps:
                                      DropDownDecoratorProps(
                                    dropdownSearchDecoration:
                                        InputDecoration.collapsed(
                                      hintText: 'Select Department',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _isCustomLocation
                                ? Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _customLocationController,
                                          onChanged: (String value) {
                                            setState(() {
                                              _selectedLocation = value;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Enter custom location',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isCustomLocation = false;
                                            _selectedLocation = null;
                                          });
                                        },
                                        icon: Icon(Icons.arrow_drop_down),
                                      ),
                                    ],
                                  )
                                : SizedBox(
                                    height: 40,
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: DropdownSearch<String>(
                                        popupProps: const PopupProps.menu(
                                          showSelectedItems: true,
                                          showSearchBox: true,
                                        ),
                                        items: [
                                          "Location 1",
                                          "Location 2",
                                          "Location 3",
                                          "Location 4",
                                          "Location 5",
                                          'Custom Location',
                                        ],
                                        dropdownDecoratorProps:
                                            DropDownDecoratorProps(
                                          dropdownSearchDecoration:
                                              InputDecoration.collapsed(
                                            hintText: 'Select Location',
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        onChanged: (String? value) {
                                          setState(() {
                                            if (value == 'Custom Location') {
                                              _isCustomLocation = true;
                                            } else {
                                              _isCustomLocation = false;
                                              _selectedLocation = value!;
                                            }
                                          });
                                        },
                                        selectedItem: _selectedLocation,
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
                        'B) Clearance by Operation',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
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
                            _applicantName = value;
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
                        'C) Precautions Taken',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Explosive Test',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isSwitchPutOff,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSwitchPutOff = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isSwitchPutOff,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSwitchPutOff = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isSwitchPutOff,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSwitchPutOff = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Power fuse remove',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isPowerFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isPowerFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isPowerFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isPowerFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isPowerFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isPowerFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Control/space heater fuses removed',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isControlFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isControlFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isControlFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isControlFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isControlFuseRemoved,
                                      onChanged: (value) {
                                        setState(() {
                                          _isControlFuseRemoved = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Breaker Racked out',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isBreakerRackedOut,
                                      onChanged: (value) {
                                        setState(() {
                                          _isBreakerRackedOut = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isBreakerRackedOut,
                                      onChanged: (value) {
                                        setState(() {
                                          _isBreakerRackedOut = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isBreakerRackedOut,
                                      onChanged: (value) {
                                        setState(() {
                                          _isBreakerRackedOut = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Do Not Operate tags provided',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isOperateTagProvided,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOperateTagProvided = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isOperateTagProvided,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOperateTagProvided = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isOperateTagProvided,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOperateTagProvided = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Tag No',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _TagNo = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Terminal / Cable earthed and short circuited',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isCableEarthed,
                                      onChanged: (value) {
                                        setState(() {
                                          _isCableEarthed = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isCableEarthed,
                                      onChanged: (value) {
                                        setState(() {
                                          _isCableEarthed = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isCableEarthed,
                                      onChanged: (value) {
                                        setState(() {
                                          _isCableEarthed = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Earth continuity checked',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isEarthContinuity,
                                      onChanged: (value) {
                                        setState(() {
                                          _isEarthContinuity = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isEarthContinuity,
                                      onChanged: (value) {
                                        setState(() {
                                          _isEarthContinuity = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isEarthContinuity,
                                      onChanged: (value) {
                                        setState(() {
                                          _isEarthContinuity = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Use electrical gloves rated 11/33 KV',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isUseElectricGloves,
                                      onChanged: (value) {
                                        setState(() {
                                          _isUseElectricGloves = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isUseElectricGloves,
                                      onChanged: (value) {
                                        setState(() {
                                          _isUseElectricGloves = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isUseElectricGloves,
                                      onChanged: (value) {
                                        setState(() {
                                          _isUseElectricGloves = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Other ?',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Reduced spacing between radio buttons
                              Container(
                                width: 95,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Normal',
                                      groupValue: _isOther,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOther = value;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 115,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Alternative',
                                      groupValue: _isOther,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOther = value;
                                        });
                                      },
                                    ),
                                    Text('Alternative'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 0),
                              // Reduced spacing between radio buttons
                              Container(
                                width: 73,
                                // Set your desired width for the radio buttons
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'N/A',
                                      groupValue: _isOther,
                                      onChanged: (value) {
                                        setState(() {
                                          _isOther = value;
                                        });
                                      },
                                    ),
                                    Text('N/A'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Mention Other',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Other = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'D) Special Instrucations',
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
                            _SpecialInstructions = value;
                          });
                        },
                        maxLines: 3,
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
                        'E) Applicant & Authoriser',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Certify that the precautions are fulfilled and work site plus equipment are ready and safe for the job',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Permit is valid Upto',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          SizedBox(height: 10.0),
                          _isCustomTime
                              ? Expanded(
                                  child: TextFormField(
                                    controller: _customTimeController,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedTime = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter custom location',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: SizedBox(
                                    height: 40,
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration.collapsed(
                                            hintText: ''),
                                        isExpanded: true,
                                        // Ensures that the dropdown fills the available space horizontally
                                        style: TextStyle(color: Colors.black),
                                        value: _selectedTime,
                                        items: <String>[
                                          '1 hrs',
                                          '2 hrs',
                                          '3 hrs',
                                          '4 hrs',
                                          '5 hrs',
                                          'Custom Time',
                                          // Add custom location to the drop-down
                                        ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          },
                                        ).toList(),
                                        hint: Text(
                                          "Time",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            if (value == 'Custom Time') {
                                              _isCustomTime = true;
                                            } else {
                                              _isCustomTime = false;
                                              _selectedTime = value!;
                                            }
                                          });
                                        },
                                      ),
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
                        'Applicant',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Designation : Certified electrical person',
                        style: TextStyle(fontSize: 16.0),
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
                            _applicantName = value;
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
                        'Designation : Certified electrical person',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Name',
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
                              dropdownSearchDecoration:
                                  InputDecoration.collapsed(
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
                        'Holder',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Designation : Certified electrical person',
                        style: TextStyle(fontSize: 16.0),
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
                            _Holder = value;
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
                        '(to be renewed everyshift. Max. Validity - 24 Hrs)',
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
                        'Applicant',
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
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Authoriser by',
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
                              dropdownSearchDecoration:
                                  InputDecoration.collapsed(
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
                        'Applicant',
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
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Authoriser by',
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
                              dropdownSearchDecoration:
                                  InputDecoration.collapsed(
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
                        'G) Job completion and closure of certificate',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Job is completed and we have inspected the site & found the area cleared of men and materials. Temporary earths also removed. ',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Certificate is hereby close.',
                        style: TextStyle(fontSize: 20.0),
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
                            _applicantName = value;
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
                                _selectedAuthorizationName = value!;
                              });
                            },
                            selectedItem: _selectedAuthorizationName,
                            popupProps: const PopupProps.menu(
                              showSelectedItems: true,
                              showSearchBox: true,
                            ),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration:
                                  InputDecoration.collapsed(
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
                            _Holder = value;
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
