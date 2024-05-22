import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';


class ViewUserData extends StatefulWidget {
  @override
  ViewUserDataState createState() => ViewUserDataState();
}

class ViewUserDataState extends State<ViewUserData> {

  String _ApplicantName = '';
  String _EmailID = '';
  String _Password ='';
  bool _isCustomDIC = false;
  bool _isCustomDesignation = false;
  final TextEditingController _customDepartmentController = TextEditingController();
  final TextEditingController _customDICController = TextEditingController();
  final TextEditingController _customDesignationController = TextEditingController();
  String? _selectedDIC;
  String? _selectedDepartment;
  String? _selectedDesignation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Applicant'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Enter Details of New Applicant',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.red
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Login ID',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 227,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Applicant Name',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _ApplicantName = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Applicant DIC',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 10),
                    Text(
                      'Applicant Department',
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
                    SizedBox(height: 10),
                    Text(
                      'Email ID',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _EmailID = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Designation',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    _isCustomDesignation
                        ? Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _customDesignationController,
                            onChanged: (String value) {
                              setState(() {
                                _selectedDesignation = value;
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
                              _isCustomDesignation = false;
                              _selectedDesignation = null;
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
                            "Senior Engineer",
                            "Engineer",
                            "Assistant Engineer",
                          ],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration:
                            InputDecoration.collapsed(
                              hintText: 'Select Designation',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              if (value == 'Custom Designation') {
                                _isCustomDesignation = true;
                              } else {
                                _isCustomDesignation = false;
                                _selectedDesignation = value!;
                              }
                            });
                          },
                          selectedItem: _selectedDesignation,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _Password = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {  },
                        child: Text('Add Applicant'),
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
}
