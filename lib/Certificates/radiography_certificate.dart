import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RadiographyCertificate extends StatefulWidget {
  @override
  _RadiographyCertificateState createState() => _RadiographyCertificateState();
}

class _RadiographyCertificateState extends State<RadiographyCertificate> {
  String _certificateNumber = '';
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
  String _RadiographyReason = '';
  String _Make = '';
  String _Type = '';
  String _voltage = '';
  bool _isSealed = false;
  bool _isUnsealed = false;
  String _totalActivity = '';
  String _halfLife = '';
  String _Isotope = '';
  bool _isAlpha = false;
  bool _isBeta = false;
  bool _isGamma = false;
  bool _isNeutron = false;
  String _Precautions = '';
  final String _applicantSign = '';
  String _applicantName = '';
  final String _authorizationSign = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiography Certificate'),
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
                      SizedBox(height: 16.0),
                      Text(
                        '1.Applied by permit applicant',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Applicant Name:',
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
                        '2.Reason for radiography',
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
                            _RadiographyReason = value;
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
                        'A.General Information:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Radiation Source:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '1. X-Ray apparatus:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Make',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Make = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Type',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Type = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Max.Tube voltage in KV',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _voltage = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'RadioActive Substance',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Sealed'),
                              value: true,
                              groupValue: _isSealed,
                              onChanged: (value) {
                                setState(() {
                                  _isSealed = value!;
                                  _isUnsealed =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<bool>(
                              title: Text('Unsealed'),
                              value: true,
                              groupValue: _isUnsealed,
                              onChanged: (value) {
                                setState(() {
                                  _isUnsealed = value!;
                                  _isSealed =
                                      !value; // Update the other value accordingly
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Total Activity',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _totalActivity = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Half Life',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _halfLife = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Isotope',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            _Isotope = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Type of radiation',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioListTile<bool>(
                                  title: Text('Alpha'),
                                  value: true,
                                  groupValue: _isAlpha,
                                  onChanged: (value) {
                                    setState(() {
                                      _isAlpha = value!;
                                      _isBeta = !value;
                                      _isNeutron = !value;
                                      _isGamma =
                                          !value; // Update the other value accordingly
                                    });
                                  },
                                ),
                                RadioListTile<bool>(
                                  title: Text('Beta'),
                                  value: true,
                                  groupValue: _isBeta,
                                  onChanged: (value) {
                                    setState(() {
                                      _isBeta = value!;
                                      _isAlpha = !value;
                                      _isNeutron = !value;
                                      _isGamma =
                                          !value; // Update the other value accordingly
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioListTile<bool>(
                                  title: Text('Gamma'),
                                  value: true,
                                  groupValue: _isGamma,
                                  onChanged: (value) {
                                    setState(() {
                                      _isGamma = value!;
                                      _isBeta = !value;
                                      _isAlpha = !value;
                                      _isNeutron =
                                          !value; // Update the other value accordingly
                                    });
                                  },
                                ),
                                RadioListTile<bool>(
                                  title: Text('Neutron'),
                                  value: true,
                                  groupValue: _isNeutron,
                                  onChanged: (value) {
                                    setState(() {
                                      _isNeutron = value!;
                                      _isGamma = !value;
                                      _isBeta = !value;
                                      _isAlpha =
                                          !value; // Update the other value accordingly
                                    });
                                  },
                                ),
                              ],
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
                        'B.Special Precaution to be taken',
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
                            _Precautions = value;
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
                        '3.Permit Authoriser',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I Authorize the radiography test specified above to be carried out, subject to the nominated safety precaution and conditions being maintained during the validity period of the permit(s) to work specified in the certificate',
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
                        '4.Permit Holder (Qualified radiation protection supervisor)',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I understand all the above safety precautions; I will ensure that work only takes place when all these safety precautions are compiled with. Note: Part A & B to be filled by Radiation Protection Supervisor only',
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
