import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jsw_epermit/add_certificate.dart';

import '../Certificates/closureofroads_certificate.dart';
import '../Certificates/confinedspace_certificate.dart';
import '../Certificates/electrical_certificate.dart';
import '../Certificates/excavation_certificate.dart';
import '../Certificates/heavylift_certificate.dart';
import '../Certificates/lockout_certificate.dart';
import '../Certificates/pickandcarry_certificate.dart';
import '../Certificates/radiography_certificate.dart';
import '../Certificates/scaffolding_certificate.dart';
import '../Certificates/workatheight_certificate.dart';

class CompletedWork extends StatefulWidget {
  @override
  _CompletedWorkState createState() => _CompletedWorkState();
}

class _CompletedWorkState extends State<CompletedWork> {
  String rejectionReason = ''; // To store the rejection reason
  String? selectOption;
  bool _isColdWork = false;
  bool _isHotWork = false;
  TextEditingController DateInput = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  String _permitNumber = '';
  final String _fromTime = '';
  final String _toTime = '';
  String? _selectedDept;
  String? _selectedDepartment;
  String? _selectedLocation;
  bool _isCustomLocation = false;
  final TextEditingController _customLocationController = TextEditingController();
  String? _selectedDIC;
  bool _isCustomDIC = false;
  final TextEditingController _customDICController = TextEditingController();
  String? _selectedAuthorizationName;
  final String _location = '';
  String _workDescription = '';
  final String _applicantSign = '';
  final String _applicantName = '';
  final String _authorizationSign = '';
  final String _authorizationName = '';
  String? _safetyMeasuresTaken;
  String? _isWaterSealMade;
  String? _isEquipmentDrainedCleaned;
  String? _areBleedersOpened;
  String? _isNitrogenPurgingDone;
  String? _areRadioactiveSourcesProtected;
  String? _isWorkAtHeightMedicalFitness;
  String? _isGasLineWorkMedicalFitness;
  String? _isConfinedSpaceEntryMedicalFitness;
  String _specialPrecautions = '';
  final String _applicantSignText = '';
  final String _applicantNameText = '';
  final String _authorizationSignText = '';
  String _permitholderNameText = '';
  String? _isEyeFaceEarProtection;
  String? _isHeadProtection;
  String? _isBodyProtection;
  String? _isRespiratoryProtection;
  String? _isLegProtection;
  String? _isPortableCOMonitor;
  String? _isRoofLadderGasCuttingSets;
  String? _isSafeMeansOfAccess;
  String? _isCompetentFireWatcher;
  String? _isFireExtinguishers;
  String? _isPressureFireHose;
  String? _isFireTender;
  String? _isScreenoffArea;
  String? _isExplosiveTest;
  String? _isCarbonMonoxideTest;
  String? _isOxygenTest;

  void _viewAddCertificate(BuildContext context) {
    // View new work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddCertificates()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSW Work Completed'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Permit Number
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            // Adjust the width of the text field as needed
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
                    ),

                    // Radio Buttons (Cold Work and Hot Work)
                    Container(
                      width: 250,
                      // Specify the width for the RadioButtons container
                      child: Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: Text('Cold'),
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
                                title: Text('Hot'),
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
                      ),
                    ),
                    // Add other form fields and widgets here...
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Application and work description (Filled by Applicant):',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Planned Work Schedule Date:',
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
                                  "DIC GS",
                                  "DIC IC",
                                  "DIC Mills",
                                  "DIC PS",
                                  "DIC Steel",
                                  "DIC TS",
                                  'Custom DIC',
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
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
                            'Weigh Bridge',
                            'Safety',
                            'OCCUPATIONAL HEALTH CENTER',
                            'Transport',
                            'Human Resources',
                            'Civil',
                            'Projects',
                            'Inward Logistics',
                            'Commercial',
                            'Security',
                            'Horticulture',
                            'Information Technology',
                            'Internal Audit',
                            'Legal',
                            'LEARNING & DEVELOPMENT',
                            'Adminstration',
                            'Customer Complaints',
                            'Works',
                            'Sales Audit & Weigh Bridge',
                            'Employee Life Cycle & CLM',
                            'Civil & Projects',
                            'Time Office',
                            'Occupation Health Centre',
                            'FINANCE AND ACCOUNTS',
                            'Customer Order Services',
                            'Mechanical Spares Procurements',
                            'Environment',
                            'Business Excellence',
                            'Sales Audit',
                            'COSTING',
                            'Corporate Social Responsibility',
                            'SAP FICO & MM Support',
                            'Commercial & Purchase',
                            'Projects Mechanical',
                            'Crane Maintenance',
                            'Central Maintenance & Material Planning',
                            'Project Electrical',
                            'Raw Material Procurements',
                            'BF Operations',
                            'BF I Control Room',
                            'BF I Crane Operations',
                            'BF I Consumables & Materials Stacking',
                            'BF I Maintenance (Electrical)',
                            'BF I PCI',
                            'BF I RMHS',
                            'BF I Stove & GCP',
                            'BF II (Operations)',
                            'BF II Cast House',
                            'BF II Consumables & Materials Stacking',
                            'BF II Control Room',
                            'BF II Maintenance (Electrical)',
                            'BF II Maintenance (Mechanical)',
                            'BF II PCM',
                            'BF II RMHS',
                            'BF I Stove & GCP',
                            'BF Maintenance',
                            'SP II (Operations)',
                            'SP Wagon Tippler',
                            'BF I Cast House',
                            'Coke Oven',
                            'BF I Maintenance (Mechanical)',
                            'BF I (Operations)',
                            'BF I Maintenance (Mechanical)',
                            'SP II RMHS',
                            'SP Maintenance (Mechanical)',
                            'Iron Zone',
                            'SP II (Mechanical)',
                            'Sinter Plant',
                            'SP (Operations)',
                            'SP I (Mechanical)',
                            'SP I (Electrical)',
                            'BF II (Operations)',
                            'BF II Cast House',
                            'BF Maintenance (Electrical)',
                            'PCI',
                            'SP I (Operations)',
                            'BRM (OPRN)',
                            'BRM MAINT (MECH)',
                            'BRM MAINT (ELEC)',
                            'Blooming Mill Operations',
                            'Blooming Mill Maintenance (Electrical)',
                            'Annealing',
                            'ROLLING MILLS',
                            'Blooming Mill',
                            'Bar & Rod Mill',
                            'BRM Products',
                            'BLM Products',
                            'Ball mill',
                            'CPP Maintenance (Mechanical)',
                            'ASP & Utility',
                            'CPP Operations',
                            'CPP II Maintenance (Electrical)',
                            'CPP II (Operations)',
                            'CPP I Maintenance (Electrical)',
                            'CPP I (Operations)',
                            'Utilities',
                            'Air Separation Plant',
                            'Power Distribution',
                            'CCM I (Operations)',
                            'EOF I (Operations)',
                            'EOF (MECH)',
                            'EOF I (Electrical)',
                            'CCM (OPRN)',
                            'CCM (ELECT)',
                            'SMS Maintenance (Mechanical)',
                            'SMS Maintenance (Electrical)',
                            'EOF II (Operations)',
                            'LRF I (Operations)',
                            'SMS Refractory',
                            'CCM III (Electrical)',
                            'EOF II (Electrical)',
                            'CCM II (Operations)',
                            'CCM II (Mechanical)',
                            'CCM III (Mechanical)',
                            'SMS Operations',
                            'LRF Maintenance (Electrical)',
                            'SMS Maintenance',
                            'LRF Maintenance (Mechanical)',
                            'Mechanical Testing',
                            'Quality Management',
                            'Cast Product Inspection',
                            'DESPATCH',
                            'Quality Assurance',
                            'Research & Product Development',
                            'Production Planning & Control',
                            'Line 3 & 4'
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
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration.collapsed(
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
                    SizedBox(height: 20),
                    _isCustomLocation
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
                                  'Materials',
                                  'Stores',
                                  'Logistics',
                                  'Railway Yard',
                                  'Commercial',
                                  'Others',
                                  'Weigh Bridge',
                                  'Others',
                                  'Safety',
                                  'Others',
                                  'OHC',
                                  'Others',
                                  'Transport',
                                  'Canteen',
                                  'Security',
                                  'Main Gate',
                                  'Horticulture',
                                  'Others',
                                  'HR',
                                  'Others',
                                  'others',
                                  'Others',
                                  'Other',
                                  'Others',
                                  'others',
                                  'others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'others',
                                  'Others',
                                  'others',
                                  'Other',
                                  'Others',
                                  'Others',
                                  'others',
                                  'others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Stock House',
                                  'Cast House',
                                  'BLT',
                                  'Stove',
                                  'Cranes',
                                  'PCM',
                                  'Pump House',
                                  'SGP Runner',
                                  'Gas line',
                                  'Dedusting system',
                                  'others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'SP',
                                  'SP Operation',
                                  'SP Mechanical',
                                  'SP Electrical',
                                  'RMHS',
                                  'WT',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Annealing',
                                  'Pickling',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Pump house',
                                  'Charging area',
                                  'Main mill',
                                  'Material Packaging Area',
                                  'others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'CPP Operation',
                                  'CPP Mechanical',
                                  'CPP Electrical',
                                  'Others',
                                  'Utility',
                                  'RO plant',
                                  'Fire Hydrant System',
                                  'ETP',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'EOF Operation',
                                  'EOF Mechanical',
                                  'EOF Electrical',
                                  'LRF Operation',
                                  'LRF Mechanical',
                                  'LRF Electrical',
                                  'CCM Operation',
                                  'CCM Mechanical',
                                  'CCM Electrical',
                                  'SMS Utility',
                                  'SMS Crane Maintenance',
                                  'SMS Scrap Yard',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Other location',
                                  'Others',
                                  '0thers',
                                  'Others',
                                  'others',
                                  'Others',
                                  'others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'Others',
                                  'PPC',
                                  'Despatch',
                                  'Others',
                                  'Others'
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
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
                    SizedBox(height: 10.0),
                    Text(
                      'Work Description:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _workDescription = value;
                        });
                      },
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Authorisation for shut down',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 400,
                      // Specify the width for the RadioButtons container
                      child: Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: Text(
                                  'Required',
                                  style: TextStyle(
                                      fontSize:
                                          15.0), // Adjust the font size as needed
                                ),
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
                                title: Text(
                                  'Not Required',
                                  style: TextStyle(
                                      fontSize:
                                          15.0), // Adjust the font size as needed
                                ),
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
                      ),
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
                    Text(
                      '1.Safety Measures Taken by Operations:',
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
                            '1.1 Equipment is free from Flammable/ Hydrocarbon / Toxic gases',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _safetyMeasuresTaken,
                                    onChanged: (value) {
                                      setState(() {
                                        _safetyMeasuresTaken = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _safetyMeasuresTaken,
                                    onChanged: (value) {
                                      setState(() {
                                        _safetyMeasuresTaken = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _safetyMeasuresTaken,
                                    onChanged: (value) {
                                      setState(() {
                                        _safetyMeasuresTaken = value;
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
                            '1.2 Equipment properly drained, cleaned',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isEquipmentDrainedCleaned,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEquipmentDrainedCleaned = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isEquipmentDrainedCleaned,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEquipmentDrainedCleaned = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isEquipmentDrainedCleaned,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEquipmentDrainedCleaned = value;
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
                            '1.3 Water seal has been made',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isWaterSealMade,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWaterSealMade = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isWaterSealMade,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWaterSealMade = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isWaterSealMade,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWaterSealMade = value;
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
                            '1.4 Bleeders have been opened',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _areBleedersOpened,
                                    onChanged: (value) {
                                      setState(() {
                                        _areBleedersOpened = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _areBleedersOpened,
                                    onChanged: (value) {
                                      setState(() {
                                        _areBleedersOpened = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _areBleedersOpened,
                                    onChanged: (value) {
                                      setState(() {
                                        _areBleedersOpened = value;
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
                            '1.5 Nitrogen purging has been done',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isNitrogenPurgingDone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isNitrogenPurgingDone = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isNitrogenPurgingDone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isNitrogenPurgingDone = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isNitrogenPurgingDone,
                                    onChanged: (value) {
                                      setState(() {
                                        _isNitrogenPurgingDone = value;
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
                            '1.6 Radioactive sources protected',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _areRadioactiveSourcesProtected,
                                    onChanged: (value) {
                                      setState(() {
                                        _areRadioactiveSourcesProtected = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _areRadioactiveSourcesProtected,
                                    onChanged: (value) {
                                      setState(() {
                                        _areRadioactiveSourcesProtected = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _areRadioactiveSourcesProtected,
                                    onChanged: (value) {
                                      setState(() {
                                        _areRadioactiveSourcesProtected = value;
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
                            '1.7 Work at height medical fitness',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isWorkAtHeightMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWorkAtHeightMedicalFitness = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isWorkAtHeightMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWorkAtHeightMedicalFitness = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isWorkAtHeightMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isWorkAtHeightMedicalFitness = value;
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
                            '1.8 Gasline work medical fitness',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isGasLineWorkMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isGasLineWorkMedicalFitness = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isGasLineWorkMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isGasLineWorkMedicalFitness = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isGasLineWorkMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isGasLineWorkMedicalFitness = value;
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
                            '1.9 Confined space entry medical fitness',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue:
                                        _isConfinedSpaceEntryMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isConfinedSpaceEntryMedicalFitness =
                                            value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue:
                                        _isConfinedSpaceEntryMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isConfinedSpaceEntryMedicalFitness =
                                            value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue:
                                        _isConfinedSpaceEntryMedicalFitness,
                                    onChanged: (value) {
                                      setState(() {
                                        _isConfinedSpaceEntryMedicalFitness =
                                            value;
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
                      '2.Special Precautions and Potential Hazards (Filled by Applicant / Authorizer):',
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
                          _specialPrecautions = value;
                        });
                      },
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
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
                      '3.PPE, Fire precautions, gas text & associated certificates (to be filled by permit applicant):',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '3A- PPE & Others:',
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
                            '3.1 Eye, Face & Ear protection',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isEyeFaceEarProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEyeFaceEarProtection = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isEyeFaceEarProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEyeFaceEarProtection = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isEyeFaceEarProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isEyeFaceEarProtection = value;
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
                            '3.2 Head protection',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isHeadProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isHeadProtection = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isHeadProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isHeadProtection = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isHeadProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isHeadProtection = value;
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
                            '3.3 body protection, Full Body safety harness',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isBodyProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isBodyProtection = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isBodyProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isBodyProtection = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isBodyProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isBodyProtection = value;
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
                            '3.4 Respiratory protection (BA set) ',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isRespiratoryProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRespiratoryProtection = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isRespiratoryProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRespiratoryProtection = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isRespiratoryProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRespiratoryProtection = value;
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
                            '3.5 Leg protection',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isLegProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isLegProtection = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isLegProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isLegProtection = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isLegProtection,
                                    onChanged: (value) {
                                      setState(() {
                                        _isLegProtection = value;
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
                            '3.6 Portable CO monitor',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isPortableCOMonitor,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPortableCOMonitor = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isPortableCOMonitor,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPortableCOMonitor = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isPortableCOMonitor,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPortableCOMonitor = value;
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
                            '3.7 Roof ladder/ Gas cutting sets',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isRoofLadderGasCuttingSets,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRoofLadderGasCuttingSets = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isRoofLadderGasCuttingSets,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRoofLadderGasCuttingSets = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isRoofLadderGasCuttingSets,
                                    onChanged: (value) {
                                      setState(() {
                                        _isRoofLadderGasCuttingSets = value;
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
                            '3.8 Safe means of access/ Scaffolding/ Enclosures',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isSafeMeansOfAccess,
                                    onChanged: (value) {
                                      setState(() {
                                        _isSafeMeansOfAccess = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isSafeMeansOfAccess,
                                    onChanged: (value) {
                                      setState(() {
                                        _isSafeMeansOfAccess = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isSafeMeansOfAccess,
                                    onChanged: (value) {
                                      setState(() {
                                        _isSafeMeansOfAccess = value;
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
                    Text(
                      '3B-Fire precautions and gas tests:',
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
                            'Competent Fire Watcher',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isCompetentFireWatcher,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCompetentFireWatcher = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isCompetentFireWatcher,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCompetentFireWatcher = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isCompetentFireWatcher,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCompetentFireWatcher = value;
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
                            'Fire Extinguishers',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isFireExtinguishers,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireExtinguishers = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isFireExtinguishers,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireExtinguishers = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isFireExtinguishers,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireExtinguishers = value;
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
                            'Pressure Fire Hose',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isPressureFireHose,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPressureFireHose = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isPressureFireHose,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPressureFireHose = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isPressureFireHose,
                                    onChanged: (value) {
                                      setState(() {
                                        _isPressureFireHose = value;
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
                            'Fire Tender',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isFireTender,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireTender = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isFireTender,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireTender = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isFireTender,
                                    onChanged: (value) {
                                      setState(() {
                                        _isFireTender = value;
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
                            'Screen off Area',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isScreenoffArea,
                                    onChanged: (value) {
                                      setState(() {
                                        _isScreenoffArea = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isScreenoffArea,
                                    onChanged: (value) {
                                      setState(() {
                                        _isScreenoffArea = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isScreenoffArea,
                                    onChanged: (value) {
                                      setState(() {
                                        _isScreenoffArea = value;
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
                            'Explosive Test',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isExplosiveTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isExplosiveTest = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isExplosiveTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isExplosiveTest = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isExplosiveTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isExplosiveTest = value;
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
                            'Carbon Monoxide Test',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isCarbonMonoxideTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCarbonMonoxideTest = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isCarbonMonoxideTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCarbonMonoxideTest = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isCarbonMonoxideTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCarbonMonoxideTest = value;
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
                            'Oxygen Test',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Yes',
                                    groupValue: _isOxygenTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isOxygenTest = value;
                                      });
                                    },
                                  ),
                                  Text('Yes'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'No',
                                    groupValue: _isOxygenTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isOxygenTest = value;
                                      });
                                    },
                                  ),
                                  Text('No'),
                                ],
                              ),
                            ),
                            SizedBox(width: 0),
                            // Reduced spacing between radio buttons
                            Container(
                              width: 80,
                              // Set your desired width for the radio buttons
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'N/A',
                                    groupValue: _isOxygenTest,
                                    onChanged: (value) {
                                      setState(() {
                                        _isOxygenTest = value;
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
                    Text(
                      '3C-Certificates:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Confined Space Entry: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 32),
                              ElevatedButton(
                                onPressed: () =>
                                    _ConfinedSpaceEntryCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'LOTO: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 144),
                              ElevatedButton(
                                onPressed: () => _LockouttagOut(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Electrical: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 117),
                              ElevatedButton(
                                onPressed: () =>
                                    _ElectricalCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Working at Height: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 55),
                              ElevatedButton(
                                onPressed: () =>
                                    _WorkingAtHeightCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Add other rows here...
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Excavation: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 104),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () =>
                                    _ExcavationCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Heavy Lift: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 110),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () => _HeavyLiftCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Pick & Carry: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 95),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () =>
                                    _PickAndCarryCraneCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Road Closure: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 87),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () => _ClosureofRoads(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Scaffolding: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 100),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () =>
                                    _ScaffoldingCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                'Radiography: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(width: 95),
                              // Add some spacing between the text and button
                              ElevatedButton(
                                onPressed: () =>
                                    _RadiographyCertificate(context),
                                child: Text('Add'),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Certificate No',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Permit Holder:',
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
                          _permitholderNameText = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
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
                      'Permit Authorizer and permit validity:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, // Make the text bold
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Date:',
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
            ],
          ),
        ),
      ),
    );
  }

  void _ExcavationCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExcavationCertificate()),
    );
    // Functionality for 'Excavation Certificate' button
  }

  void _RadiographyCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RadiographyCertificate()),
    );
    // Functionality for 'Radiography Certificate' button
  }

  void _ClosureofRoads(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClosureofroadCertificate()),
    );
    // Functionality for 'Certificate for closure of roads' button
  }

  void _LockouttagOut(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LockOut()),
    );
    // Functionality for 'Lock out tag out Certificate' button
  }

  void _ElectricalCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ElectricalCertificate()),
    );
    // Functionality for 'Electrical Certificate' button
  }

  void _PickAndCarryCraneCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PickAndCarryApp()),
    );
    // Functionality for 'Pick and carry crane Certificate' button
  }

  void _HeavyLiftCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HeavyLiftCertify()),
    );
    // Functionality for 'Heavy lift Certificate' button
  }

  void _WorkingAtHeightCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Work_at_Height()),
    );
    // Functionality for 'Working at height Certificate' button
  }

  void _ScaffoldingCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Scaffold()),
    );
    // Functionality for 'Scaffolding Certificate' button
  }

  void _ConfinedSpaceEntryCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const confined_space_certi()),
    );
    // Functionality for 'Confined space entry Certificate' button
  }
}
