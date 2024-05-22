import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'DIC_Location_History.dart';

class DICLocation extends StatefulWidget {
  @override
  DICLocationPage createState() => DICLocationPage();
}

class DICLocationPage extends State<DICLocation> {
  String? _selectedDepartment;
  String? _selectedLocation;
  bool _isCustomLocation = false;
  final TextEditingController _customLocationController = TextEditingController();
  String? _selectedDIC;
  bool _isCustomDIC = false;
  final TextEditingController _customDICController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIC Location'),
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
                    SizedBox(height: 30.0),
                    Container(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => _viewDICLocationHistory(context),
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

  void _viewDICLocationHistory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DICLoactionHistoryTable()),
    );
    // Functionality for 'Excavation Certificate' button
  }
}
