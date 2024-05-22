import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jsw_epermit/add_certificate.dart';

class ExcavationCertificate extends StatefulWidget {
  @override
  _ExcavationCertificateState createState() => _ExcavationCertificateState();
}

class _ExcavationCertificateState extends State<ExcavationCertificate> {
  String _serialNumber = '';
  String _permitNumber = '';
  TextEditingController toDateController = TextEditingController();
  String? _selectedLocation;
  bool _isCustomLocation = false;
  final TextEditingController _customLocationController = TextEditingController();
  String? _selectedDIC;
  bool _isCustomDIC = false;
  final TextEditingController _customDICController = TextEditingController();
  String? _selectedDepartment;
  String? _selectedAuthorizationName;
  TextEditingController toTimeController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  final String _Date = '';
  String _Plant = '';
  final String _Time = '';
  final String _location = '';
  String _Equipment = '';
  String _excavationDetails = '';
  String _existingServices = '';
  String _telecomRemarks = '';
  final String _telecomSign = '';
  String _telecomName = '';
  final String _telecomDate = '';
  String _electricalRemarks = '';
  final String _electricalSign = '';
  String _electricalName = '';
  final String _electricalDate = '';
  String _civilRemarks = '';
  final String _civilSign = '';
  String _civilName = '';
  final String _civilDate = '';
  String _utilitiesRemarks = '';
  final String _utilitiesSign = '';
  String _utilitiesName = '';
  final String _utilitiesDate = '';
  String _othersRemarks = '';
  final String _othersSign = '';
  String _othersName = '';
  final String _othersDate = '';
  String _cableDetector = '';
  String _pilotTrenches = '';
  String _mechanicalMeans = '';
  final String _applicantSign = '';
  String _applicantName = '';
  final String _authorizationSign = '';
  final String _authorizationName = '';

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
        title: Text('Excavation Certificate'),
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
                                    _serialNumber = value;
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
                      // Add the rest of your content here
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
                      SizedBox(height: 16.0),
                      Text(
                        '1.Applied by permit applicant (Applicant has to take the clearance from all concerned dept.)',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
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
                        'Plant:',
                        style: TextStyle(fontSize: 16.0),
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
                        'Equipment:',
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
                        '2.Details of Excavation',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Limits of excavation to be shown on as built drawing attached to this certificate',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _excavationDetails = value;
                          });
                        },
                        maxLines: 4,
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
                        '3.Details of existing underground services near excavation',
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
                            _existingServices = value;
                          });
                        },
                        maxLines: 4,
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
                        '4.Department Approval',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '(Department to be consulted to be specified by resposible executive)',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I have examined the drawings of the proposed excavation, and of adjacent underground services, I confirm that the excavation may proceed, subject to any comments noted below. ',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Department: Telecom',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Remarks/condition/observation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _telecomRemarks = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
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
                            _telecomName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
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
                                  labelText: "Enter Date",
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
                        'Department: Electrical/Instrument',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Remarks/condition/observation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _electricalRemarks = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
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
                            _electricalName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
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
                                  labelText: "Enter Date",
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
                        'Department: Civil',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Remarks/condition/observation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _civilRemarks = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
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
                            _civilName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
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
                                  labelText: "Enter Date",
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
                        'Department: Utilities',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Remarks/condition/observation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _utilitiesRemarks = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
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
                            _utilitiesName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
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
                                  labelText: "Enter Date",
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
                        'Department: Others',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Remarks/condition/observation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _othersRemarks = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
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
                            _othersName = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        children: [
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
                                  labelText: "Enter Date",
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
                        '5.Precautions',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Cable detector to be used over proposed route:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _cableDetector = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Pilot trenches to be hand dug to locate services:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _pilotTrenches = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Excavation may be carried out by mechanical means of after pilot trenches are completed, but no closer than 1 mtr of service:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _mechanicalMeans = value;
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
                        '6.Permit Authoriser',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I authorise the excavation work specified above to be carried out, subject to the nominated safety precaution and conditions being maintained during the validity period of the permit(s) to work specified in the certificate',
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
                        '7.Permit Holder',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I understand all the above safety precautions; I will ensure that work only takes place when all these safety precautions are compiled with.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(width: 8.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _applicantName = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Permit Holder Name',
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
