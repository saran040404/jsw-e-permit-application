import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_search/dropdown_search.dart';



class CertificateData {
  String date = '';
  String per_from_time = '';
  String per_to_time = '';
  String applicantname = '';
  String purpose = '';
  String height = '';
  String width = '';
  String length = '';
  String load = '';
  String other_scaffolds = '';
  String authorizername = '';
  String permit_Holdername = '';
  String transferdate = '';
  String transfer_date = '';
  String transfer_from_time = '';
  String transfer_to_time = '';
  String transfer_permit_Holdername = '';
  String transfer_applicant = '';
  String transfer_aurthorizer = '';
  String transfer_remark = '';
  String complete_permit_holder = '';
  String completion_date = '';
  String agency_name = '';
}

class Scaff extends StatelessWidget {
  const Scaff({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: certificate(),
    );
  }
}

class certificate extends StatefulWidget {
  const certificate({super.key});

  @override
  State<certificate> createState() => _certificateState();
}

class _certificateState extends State<certificate> {
  Widget buildDropdown({
    required List<String> items,
    required String? value,
    required ValueChanged<String?> onChanged,
    required String hintText,
    required double itemWidth,
  }) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: value,
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(
              width: itemWidth,
              child: Text(value),
            ),
          );
        }).toList(),
        hint: Text(hintText),
      ),
    );
  }

  String? selectedValue1;
  String? selectedValue2;
  String? selectedValue3;
  String? selectedAurthorizer1;
  String? selectedAurthorizer2;
  String? selectedAurthorizer3;

  String? selectedDepartment;

  List<String> Department =[
    'Blast Furnace',
    'Sinter Plant',
  ];

  List<String> Aurthorizer =[
    'Althaf S J',
    'ANIKET PANDEY',
    'Ashok C',
    'Ashok Kumar M',
    'Babu G',
    'Bollikonda Tejaswini',
    'Deeraj Kumar S',
    'Dwarapudi N.A Sivaprasad',
    'Ganeshkumar Kandasamy',
    'Gowthaman P',
    'Gururajan S',
    'Hanamant Satalgaon',
  ];

  List<String> firstDropdownItems = [
    'DIC GS',
    'DIC IC',
    'DIC Mills',
    'DIC PS',
    'DIC Steel',
    'DIC TS'
  ];

  Map<String, List<String>> secondDropdownItems = {
    'DIC GS': [
      'Materials',
      'Weigh Bridges',
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
      'SAP FICO & MM Support',
      'Commercial & Purchase',
      'Projects Mechanical',
      'Projects Mechanical',
      'Central Maintenance & Material Planning',
      'Project Electrical',
      'Raw Material Procurements'
    ],
    'DIC IC': [
      'DIC IC	BF Operations',
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
      'SP I (Operations)'
    ],
    'DIC Mills': [
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
    ],
    'DIC PS': [
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
    ],
    'DIC Steel': [
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
    ],
    'DIC TS': [
      'Mechanical Testing'
          'Quality Management',
      'Cast Product Inspection',
      'DESPATCH',
      'Quality Assurance',
      'Research & Product Development',
      'Production Planning & Control',
      'Line 3 & 4',
    ],
  };

  Map<String, List<String>> thirdDropdownItems = {
    'Materials': [
      'Materials',
      'Stores',
      'Logistics & Railway Yard',
      'Commercial',
      'Others'
    ],
    'Weigh Bridges': ['Weigh Brigge', 'Others'],
    'Safety': ['Safety', 'Others'],
    'OCCUPATIONAL HEALTH CENTER': ['OHC', 'Others'],
    'Transport': [
      'Transport',
      'Canteen',
      'Security',
      'Main Gate',
      'Horticulture',
      'Others'
    ],
    'Human Resources': ['HR', 'Others'],
    'Civil': ['Others'],
    'Projects': ['Others'],
    'Inward Logistics': ['Others'],
    'Commercial': ['Others'],
    'Security': ['Others'],
    'Horticulture': ['Others'],
    'Information Technology': ['Others'],
    'Internal Audit': ['Others'],
    'Legal': ['Others'],
    'LEARNING & DEVELOPMENT': ['Others'],
    'Adminstration': ['Others'],
    'Customer Complaints': ['Others'],
    'Works': ['Others'],
    'Sales Audit & Weigh Bridge': ['Others'],
    'Employee Life Cycle & CLM': ['Others'],
    'Civil & Projects': ['Others'],
    'Time Office': ['Others'],
    'Occupation Health Centre': ['Others'],
    'FINANCE AND ACCOUNTS': ['Others'],
    'Customer Order Services': ['Others'],
    'Mechanical Spares Procurements': ['Others'],
    'Environment': ['Others'],
    'Business Excellence': ['Others'],
    'Sales Audit': ['Others'],
    'COSTING': ['Others'],
    'Corporate Social Responsibility': ['Others'],
    'SAP FICO & MM Support': ['Others'],
    'Commercial & Purchase': ['Others'],
    'Projects Mechanical': ['Others'],
    'Central Maintenance & Material Planning': ['Others'],
    'Project Electrical': ['Others'],
    'Raw Material Procurements': ['Others'],
    'DIC IC	BF Operations': ['Others'],
    'BF I Control Room': ['Others'],
    'BF I Crane Operations': ['Others'],
    'BF I Consumables & Materials Stacking': ['Others'],
    'BF I Maintenance (Electrical)': ['Others'],
    'BF I PCI': ['Others'],
    'BF I RMHS': ['Others'],
    'BF I Stove & GCP': ['Others'],
    'BF II (Operations)': ['Others'],
    'BF II Cast House': ['Others'],
    'BF II Consumables & Materials Stacking': ['Others'],
    'BF II Control Room': ['Others'],
    'BF II Maintenance (Electrical)': ['Others'],
    'BF II Maintenance (Mechanical)': ['Others'],
    'BF II PCM': ['Others'],
    'BF II RMHS': ['Others'],
    'BF I Stove  & GCP': ['Others'],
    'BF Maintenance': ['Others'],
    'SP II (Operations)': ['Others'],
    'SP Wagon Tippler': ['Others'],
    'BF I Cast House': ['Others'],
    'Coke Oven': ['Others'],
    'BF I Maintenance (Mechanical)': ['Others'],
    'BF I (Operations)': ['Others'],
    'BF I Maintenance  (Mechanical)': [
      'Stock House',
      'Cast House',
      'BLT',
      'Stove',
      'Cranes',
      'PCM',
      'Pump House',
      'SGP Runner',
      'Gas line',
      'Dedusting system'
    ],
    'SP II RMHS': ['Others'],
    'SP Maintenance (Mechanical)': ['Others'],
    'Iron Zone': ['Others'],
    'SP II (Mechanical)': ['Others'],
    'Sinter Plant': ['Others'],
    'SP (Operations)': ['Others'],
    'SP I (Mechanical)': ['Others'],
    'SP I (Electrical)': ['Others'],
    'BF II(Operations)': ['Others'],
    'BF II Cast House': ['Others'],
    'BF Maintenance (Electrical)': ['Others'],
    'PCI': ['Others'],
    'SP I (Operations)': [
      'SP 1& SP 2',
      'SP Operation',
      'SP Mechanical',
      'SP Electrical',
      'RMHS',
      'WT',
      'Others',
    ],
    'CPP Maintenance (Mechanical)': ['Other'],
    'ASP & Utility': ['Other'],
    'CPP Operations': ['Other'],
    'CPP II Maintenance (Electrical)': ['Others'],
    'CPP II (Operations)': ['Others'],
    'CPP I Maintenance (Electrical)': ['Others'],
    'CPP I (Operations)': [
      'CPP Operation',
      'CPP Mechanical',
      'CPP Electrical',
      'Others',
    ],
    'Utilities': [
      'Utility & RO plant',
      'Fire Hydrant System',
      'ETP',
      'Others',
    ],
    'Air Separation Plant': ['Others'],
    'Power Distribution': ['Others'],
    'BRM (OPRN)': ['Others'],
    'BRM MAINT (MECH)': ['Others'],
    'BRM MAINT (ELEC)': ['Others'],
    'Blooming Mill Operations': ['Others'],
    'Blooming Mill Maintenance (Electrical)': ['Others'],
    'Annealing': ['Annealing & Picking', 'Others'],
    'ROLLING MILLS': ['Others'],
    'Blooming Mill': ['Others'],
    'Bar & Rod Mill': ['Others'],
    'BRM Products': ['Others'],
    'BLM Products': ['Others'],
    'Ball mill': [
      'Pump house',
      'Charging area',
      'Main mill',
      'Material Packaging Area',
      'others',
    ],
    'CPP Maintenance (Mechanical)': ['Other'],
    'ASP & Utility': ['Other'],
    'CPP Operations': ['Other'],
    'CPP II Maintenance (Electrical)': ['Others'],
    'CPP II (Operations)': ['Others'],
    'CPP I Maintenance (Electrical)': ['Others'],
    'CPP I (Operations)': [
      'CPP Operation',
      'CPP Mechanical',
      'CPP Electrical',
      'Others',
    ],
    'Utilities': [
      'Utility & RO plant',
      'Fire Hydrant System',
      'ETP',
      'Others',
    ],
    'Air Separation Plant': ['Others'],
    'Power Distribution': ['Others'],
    'CCM I (Operations)': ['Others'],
    'EOF I (Operations)': [
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
    ],
    'EOF (MECH)': ['Others'],
    'EOF I (Electrical)': ['Others'],
    'CCM (OPRN)': ['Others'],
    'CCM (ELECT)': ['Others'],
    'SMS Maintenance (Mechanical)': ['Others'],
    'SMS Maintenance (Electrical)': ['Others'],
    'EOF II (Operations)': ['Others'],
    'LRF I (Operations)': ['Others'],
    'SMS Refractory': ['Others Location'],
    'CCM III (Electrical)': ['Others'],
    'EOF II (Electrical)': ['Others'],
    'CCM II (Operations)': ['Others'],
    'CCM II (Mechanical': ['Others'],
    'CCM III (Mechanical)': ['Others'],
    'SMS Operations': ['Others'],
    'LRF Maintenance (Electrical)': ['Others'],
    'SMS Maintenance': ['Others'],
    'LRF Maintenance (Mechanical)': ['Others'],
    'Mechanical Testing': ['Others'],
    'Quality Management': ['Others'],
    'Cast Product Inspection': ['Others'],
    'DESPATCH': ['Others'],
    'Quality Assurance': ['Others'],
    'Research & Product Development': ['Others'],
    'Production Planning & Control': ['PPC & Despatch', 'Others'],
    'Line 3 & 4': ['Others'],
  };

  CertificateData certificateData = CertificateData();

  TextEditingController DateInput = TextEditingController();
  TextEditingController Per_from_time = TextEditingController();
  TextEditingController Per_to_time = TextEditingController();
  TextEditingController ApplicantNameController = TextEditingController();
  TextEditingController Agency_name = TextEditingController();
  TextEditingController Purpose = TextEditingController();
  TextEditingController Height = TextEditingController();
  TextEditingController Width = TextEditingController();
  TextEditingController Length = TextEditingController();
  TextEditingController Load = TextEditingController();

  bool Tube_coupler_scaffolds = false;
  bool System_Scaffolds = false;
  bool Mobile_Scaffolds = false;
  bool Suspended_Scaffolds = false;

  bool Other_Scaffolds = false;
  bool other_scaffolds = false;

  TextEditingController Other_scaffolds = TextEditingController();

  bool Sa1_Yes = false;
  bool Sa1_No = false;
  bool Sa1_Na = false;

  bool Sa2_Yes = false;
  bool Sa2_No = false;
  bool Sa2_Na = false;

  bool Sa3_Yes = false;
  bool Sa3_No = false;
  bool Sa3_Na = false;

  bool Sa4_Yes = false;
  bool Sa4_No = false;
  bool Sa4_Na = false;

  bool Sa5_Yes = false;
  bool Sa5_No = false;
  bool Sa5_Na = false;

  bool Sa6_Yes = false;
  bool Sa6_No = false;
  bool Sa6_Na = false;

  bool Sa7_Yes = false;
  bool Sa7_No = false;
  bool Sa7_Na = false;

  bool Sa8_Yes = false;
  bool Sa8_No = false;
  bool Sa8_Na = false;

  bool Sa9_Yes = false;
  bool Sa9_No = false;
  bool Sa9_Na = false;

  bool Sa10_Yes = false;
  bool Sa10_No = false;
  bool Sa10_Na = false;

  bool Sa11_Yes = false;
  bool Sa11_No = false;
  bool Sa11_Na = false;

  TextEditingController AuthorizerNameController = TextEditingController();
  TextEditingController permit_Holder_NameController = TextEditingController();
  TextEditingController Transfer_DateInput = TextEditingController();
  TextEditingController Transfer_from_time = TextEditingController();
  TextEditingController Transfer_to_time = TextEditingController();
  TextEditingController Transfer_permit_Holder_NameController =
  TextEditingController();
  TextEditingController Transfer_Applicant_NameController =
  TextEditingController();
  TextEditingController Transfer_Aurthorizer_NameController =
  TextEditingController();
  TextEditingController Transfer_Remark = TextEditingController();
  TextEditingController Complete_Permit_Holder = TextEditingController();
  TextEditingController Completion_DateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double textFieldWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
        appBar: AppBar(
          title: Text('Scaffolding Certificate'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 20,
                        child: Text(
                          'This is Not a Permit to Work',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: Container(
                                  height: 50,
                                  width: 150,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Permit No:'),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Certificate No:'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Column(children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Container(
                        child: Text(
                          'Section:1 (To be filled in by permit Applicant)',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            10,
                            0,
                            10,
                            0,
                          ),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Date of issue:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: TextField(
                            controller: DateInput,
                            onChanged: (value) {
                              certificateData.date = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.calendar_today),
                              labelText: "Date",
                              labelStyle: TextStyle(fontSize: 16),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2100),
                              );

                              if (pickedDate != null) {
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  DateInput.text = formattedDate;
                                  certificateData.date = formattedDate;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Permit Valid',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Container(
                              width: 140,
                              height: 40,
                              child: TextField(
                                controller: Per_from_time,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  icon: Icon(Icons.access_time),
                                  labelText: "From",
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
                                      Per_from_time.text = formattedTime;
                                      certificateData.per_from_time =
                                          formattedTime;
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 140,
                              height: 40,
                              child: TextField(
                                controller: Per_to_time,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  icon: Icon(Icons.access_time),
                                  labelText: "to",
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
                                      Per_to_time.text = formattedTime;
                                      certificateData.per_to_time =
                                          formattedTime;
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Applicant Name:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: textFieldWidth,
                            child: TextFormField(
                              onChanged: (value) {
                                certificateData.applicantname = value;
                              },
                              controller: ApplicantNameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Applicant Name',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Name of the agency:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: textFieldWidth,
                            child: TextFormField(
                              onChanged: (value) {
                                certificateData.agency_name = value;
                              },
                              controller: Agency_name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Name of  the agency',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'DIC:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,  // Choose the border color you want
                                width: 1.0,           // Adjust the border width as needed
                              ),
                            ),
                            child: buildDropdown(
                              items: firstDropdownItems,
                              value: selectedValue1,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue1 = value;
                                  selectedValue2 = null;
                                  selectedValue3 = null;
                                });
                              },
                              hintText: 'Select DIC',
                              itemWidth: 174,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Department:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,  // Choose the border color you want
                                width: 1.0,           // Adjust the border width as needed
                              ),
                            ),
                            child: buildDropdown(
                              items: secondDropdownItems[selectedValue1] ?? [],
                              value: selectedValue2,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue2 = value;
                                  selectedValue3 = null;
                                });
                              },
                              itemWidth: 174,
                              hintText: 'Select Department',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Location:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                // Choose the border color you want
                                width: 1.0, // Adjust the border width as needed
                              ),
                            ),
                            child: buildDropdown(
                              items: thirdDropdownItems[selectedValue2] ?? [],
                              value: selectedValue3,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue3 = value;
                                });
                              },
                              itemWidth: 174,
                              hintText: 'Select Location',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Purpose of Scaffolding:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: TextFormField(
                              controller: Purpose,
                              onChanged: (value) {
                                certificateData.purpose = value;
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Height:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller: Height,
                            onChanged: (value) {
                              certificateData.height = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Mtrs:',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Width:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller: Width,
                            onChanged: (value) {
                              certificateData.width = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Mtrs:',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Length:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller: Length,
                            onChanged: (value) {
                              certificateData.length = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Mtrs:',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Length:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller: Load,
                            onChanged: (value) {
                              certificateData.load = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Kgs:',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Type of Scafffolds',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                      width: 160,
                                      child: Text(
                                        'Tube & coupler scaffolds',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                                Checkbox(
                                  value: Tube_coupler_scaffolds,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Tube_coupler_scaffolds = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                      width: 160,
                                      child: Text(
                                        'System Scaffolds',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                                Checkbox(
                                  value: System_Scaffolds,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      System_Scaffolds = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                      width: 160,
                                      child: Text(
                                        'Mobile Scaffolds',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                                Checkbox(
                                  value: Mobile_Scaffolds,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Mobile_Scaffolds = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                      width: 160,
                                      child: Text(
                                        'Suspended Scaffolds',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                                Checkbox(
                                  value: Suspended_Scaffolds,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Suspended_Scaffolds = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                      width: 160,
                                      child: Text(
                                        'Other',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                                Checkbox(
                                  value: Other_Scaffolds,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Other_Scaffolds = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (Other_Scaffolds)
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            child: TextFormField(
                              controller: Other_scaffolds,
                              onChanged: (value) {
                                certificateData.other_scaffolds = value;
                              },
                              decoration:
                              InputDecoration(border: OutlineInputBorder()),
                            ),
                          ),
                        )
                    ],
                  ),
                )),
            Padding(
              padding:  EdgeInsets.all(10.0),
              child: Material(
                elevation:30,
                borderRadius:BorderRadius.all(Radius.circular(15.0)),
                child: Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Container(
                    child:Text('Actions Taken by Permit Applicant(Please click the relevant actions taken in the box provided)',style: TextStyle(color: Colors.red),),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.all(10.0),

                      child: Container(
                        width: 300,
                        child: Text(
                          'Safety Checks for Compllance:',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          '1.Risk Assessment is been caried out for the job & attached with the permit(MANDATORY REQUIREMENT)',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa1_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa1_Yes = value!;
                                  Sa1_No = !value;
                                  Sa1_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa1_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa1_No = value!;
                                  Sa1_Yes = !value;
                                  Sa1_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa1_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa1_Na = value!;
                                  Sa1_No = !value;
                                  Sa1_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          'Contractor & their workmen have been fully beriefed about the risk associated to the job',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa2_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa2_Yes = value!;
                                  Sa2_No = !value;
                                  Sa2_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa2_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa2_No = value!;
                                  Sa2_Yes = !value;
                                  Sa2_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa2_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa2_Na = value!;
                                  Sa2_No = !value;
                                  Sa2_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Container(
                        child: Text(
                          'Scaffolding inspection was done by competent person & check list attach along with this certificate',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa3_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa3_Yes = value!;
                                  Sa3_No = !value;
                                  Sa3_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa3_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa3_No = value!;
                                  Sa3_Yes = !value;
                                  Sa3_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa3_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa3_Na = value!;
                                  Sa3_No = !value;
                                  Sa3_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                      child: Container(
                        child: Text(
                          'Stable Condition of soil and good weather',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa4_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa4_Yes = value!;
                                  Sa4_No = !value;
                                  Sa4_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa4_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa4_No = value!;
                                  Sa4_Yes = !value;
                                  Sa4_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa4_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa4_Na = value!;
                                  Sa4_No = !value;
                                  Sa4_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Container(
                        child: Text(
                          'Poper access to platform in scaffolding tower',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa5_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa5_Yes = value!;
                                  Sa5_No = !value;
                                  Sa5_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa5_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa5_No = value!;
                                  Sa5_Yes = !value;
                                  Sa5_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa5_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa5_Na = value!;
                                  Sa5_No = !value;
                                  Sa5_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                      child: Container(
                        child: Text(
                          'Scaffolding training undergone by workers',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa6_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa6_Yes = value!;
                                  Sa6_No = !value;
                                  Sa6_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa6_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa6_No = value!;
                                  Sa6_Yes = !value;
                                  Sa6_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa6_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa6_Na = value!;
                                  Sa6_No = !value;
                                  Sa6_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          'Wether area below,where the height work being performed is cordoned & unauthorized entier resticted',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa7_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa7_Yes = value!;
                                  Sa7_No = !value;
                                  Sa7_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa7_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa7_No = value!;
                                  Sa7_Yes = !value;
                                  Sa7_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa7_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa7_Na = value!;
                                  Sa7_No = !value;
                                  Sa7_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          'Complaince with working at height standard requirements',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa8_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa8_Yes = value!;
                                  Sa8_No = !value;
                                  Sa8_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa8_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa8_No = value!;
                                  Sa8_Yes = !value;
                                  Sa8_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa8_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa8_Na = value!;
                                  Sa8_No = !value;
                                  Sa8_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          'Compliance with Confined Space entry standard reaquirements',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa9_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa9_Yes = value!;
                                  Sa9_No = !value;
                                  Sa9_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa9_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa9_No = value!;
                                  Sa9_Yes = !value;
                                  Sa9_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa9_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa9_Na = value!;
                                  Sa9_No = !value;
                                  Sa9_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          'Work at more than one elevation at the same segment is resticted',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa10_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa10_Yes = value!;
                                  Sa10_No = !value;
                                  Sa10_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa10_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa10_No = value!;
                                  Sa10_Yes = !value;
                                  Sa10_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa10_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa10_Na = value!;
                                  Sa10_No = !value;
                                  Sa10_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Container(
                        child: Text(
                          'Display of scaffolding tag(Scaffolding Safe for Use/Not Safe for Use)',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Radio(
                              value: true,
                              groupValue: Sa11_Yes,
                              onChanged: (value) {
                                setState(() {
                                  Sa11_Yes = value!;
                                  Sa11_No = !value;
                                  Sa11_Na = !value;
                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: Sa11_No,
                              onChanged: (value) {
                                setState(() {
                                  Sa11_No = value!;
                                  Sa11_Yes = !value;
                                  Sa11_Na = !value;
                                });
                              }),
                          Text('No'),
                          Radio(
                              value: true,
                              groupValue: Sa11_Na,
                              onChanged: (value) {
                                setState(() {
                                  Sa11_Na = value!;
                                  Sa11_No = !value;
                                  Sa11_Yes = !value;
                                });
                              }),
                          Text('NA'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Permit Authorizer Name:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,  // Choose the border color you want
                                width: 1.0,           // Adjust the border width as needed
                              ),
                            ),
                            child: buildDropdown(
                              items: Aurthorizer,
                              value: selectedAurthorizer1,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedAurthorizer1 = value;
                                });
                              },
                              hintText: 'Name of Permit Authorizer',
                              itemWidth: 174,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Department',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,  // Choose the border color you want
                                width: 1.0,           // Adjust the border width as needed
                              ),
                            ),
                            child: buildDropdown(
                              items: Department,
                              value: selectedDepartment,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedDepartment = value;

                                });
                              },
                              hintText: 'Select Department',
                              itemWidth: 174,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          child: Text(
                            'Section-2:Acceptance(Permit Holder)',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Text(
                            'I understand the work which is to be carried out and the method of work to be used to ensure that is carried out safety.No work will be carried out than the work authorized by this permit',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Name of Permit Holder:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: textFieldWidth,
                                child: TextFormField(
                                  onChanged: (value) {
                                    certificateData.permit_Holdername = value;
                                  },
                                  controller: permit_Holder_NameController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Name of Permit Holder',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Extension/Transfer of Permit',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'All checks reviewed & founded Ok to extended permit',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              10,
                              0,
                              10,
                              0,
                            ),
                            child: Container(
                              width: textFieldWidth,
                              child: Text(
                                'Date of Transfer:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            alignment: Alignment.center,
                            child: TextField(
                              controller: Transfer_DateInput,
                              onChanged: (value) {
                                certificateData.transferdate = value;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
                                labelStyle: TextStyle(fontSize: 16),
                              ),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime(2100),
                                );

                                if (pickedDate != null) {
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd')
                                      .format(pickedDate);
                                  setState(() {
                                    DateInput.text = formattedDate;
                                    certificateData.transfer_date =
                                        formattedDate;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Time of Transfer:',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                width: 140,
                                height: 40,
                                child: TextField(
                                  controller: Transfer_from_time,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.access_time),
                                    labelText: "From",
                                    labelStyle: TextStyle(fontSize: 15),
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime =
                                    await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    );

                                    if (pickedTime != null) {
                                      String formattedTime =
                                      pickedTime.format(context);
                                      setState(() {
                                        Transfer_from_time.text = formattedTime;
                                        certificateData.transfer_from_time =
                                            formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 140,
                                height: 40,
                                child: TextField(
                                  controller: Transfer_to_time,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.access_time),
                                    labelText: "to",
                                    labelStyle: TextStyle(fontSize: 15),
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime =
                                    await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    );

                                    if (pickedTime != null) {
                                      String formattedTime =
                                      pickedTime.format(context);
                                      setState(() {
                                        Transfer_to_time.text = formattedTime;
                                        certificateData.transfer_to_time =
                                            formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of Permit Holder:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: textFieldWidth,
                              child: TextFormField(
                                onChanged: (value) {
                                  certificateData.transfer_permit_Holdername =
                                      value;
                                },
                                controller:
                                Transfer_permit_Holder_NameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Name of Permit Holder',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Permit Authorizer Name:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,  // Choose the border color you want
                                  width: 1.0,           // Adjust the border width as needed
                                ),
                              ),
                              child: buildDropdown(
                                items: Aurthorizer,
                                value: selectedAurthorizer2,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedAurthorizer2 = value;
                                  });
                                },
                                hintText: 'Name of Permit Authorizer',
                                itemWidth: 174,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 25, 10),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Remark:',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          maxLines: 4,
                          onChanged: (value) {
                            certificateData.transfer_remark = value;
                          },
                          controller: Transfer_Remark,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Section-3(After Ciompletion of of Work Permit Holder)',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'To be completed by the permit Holder after completion of work & handed over to Permit Applicant/Aurthorizer',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of Permit Holder:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: textFieldWidth,
                              child: TextFormField(
                                onChanged: (value) {
                                  certificateData.complete_permit_holder =
                                      value;
                                },
                                controller: Complete_Permit_Holder,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Name of Permit Holder',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              10,
                              0,
                              0,
                              0,
                            ),
                            child: Container(
                              width: textFieldWidth,
                              child: Text(
                                'Date of Completion:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 40,
                            alignment: Alignment.center,
                            child: TextField(
                              controller: Completion_DateInput,
                              onChanged: (value) {
                                certificateData.completion_date = value;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.calendar_today),
                                labelText: "Date",
                                labelStyle: TextStyle(fontSize: 16),
                              ),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime(2100),
                                );

                                if (pickedDate != null) {
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd')
                                      .format(pickedDate);
                                  setState(() {
                                    DateInput.text = formattedDate;
                                    certificateData.completion_date =
                                        formattedDate;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              10,
                              0,
                              0,
                              0,
                            ),
                            child: Container(
                              width: textFieldWidth,
                              child: Text(
                                'Time of Completion:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 40,
                            child: TextField(
                              controller: Per_from_time,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.access_time),
                                labelText: "From",
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
                                    Per_from_time.text = formattedTime;
                                    certificateData.per_from_time =
                                        formattedTime;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ),

            Padding(
              padding:  EdgeInsets.all(10.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text('Section-4:Cancellation: I Declare that this permit is now cancelled.No Futher work is allowed until a new permit is issued',style: TextStyle(fontSize: 20,color: Colors.red),),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Aurthorizer',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,  // Choose the border color you want
                                  width: 1.0,           // Adjust the border width as needed
                                ),
                              ),
                              child: buildDropdown(
                                items: Aurthorizer,
                                value: selectedAurthorizer3,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedAurthorizer3= value;

                                  });
                                },
                                hintText: 'Select Aurthorizer',
                                itemWidth: 174,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Container(
                        child: ElevatedButton(onPressed: (){}, child: Text('Cancellation Request')),
                      ),
                    )
                  ],
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Note:',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Text(
                            '1.This permit Applies only to work in the locatino described.Any further height work must another permit issued for prescribed validity',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Text(
                            '2.This permit only applies to the person to whome it is issued.If work has to be continued by someone else,this permit must be returned to issuer for cancellation and another permit issued.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
