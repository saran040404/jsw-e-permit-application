import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_search/dropdown_search.dart';


class CertificateData {
  String date = '';
  String per_from_time = '';
  String per_to_time = '';
  String applicantname = '';
  String equipment_to_be_isolated ='';
  String aurthoriser_name ='';
  String incharge_name = '';
  String timeController = '';
  String time ='';

  String padlock_no1 ='';
  String remarks1 = '';

  String padlock_no2 ='';
  String remarks2 = '';

  String padlock_no3 ='';
  String remarks3 = '';

  String padlock_no4 ='';
  String remarks4 = '';

  String padlock_no5 ='';
  String remarks5 = '';

  String padlock_no6 ='';
  String remarks6 = '';
}

class LockOut extends StatelessWidget {
  const LockOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Certificate(),
    );
  }
}

class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {

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
  String? selectedAurthorizer;

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
    'BF I Stove & GCP': ['Others'],
    'BF Maintenance': ['Others'],
    'SP II (Operations)': ['Others'],
    'SP Wagon Tippler': ['Others'],
    'BF I Cast House': ['Others'],
    'Coke Oven': ['Others'],
    'BF I Maintenance (Mechanical)': ['Others'],
    'BF I (Operations)': ['Others'],
    'BF I Maintenance (Mechanical)': [
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
    'BF II (Operations)': ['Others'],
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
  TextEditingController Equipment_to_be_isolated = TextEditingController();
  TextEditingController Aurthoriser_Name = TextEditingController();
  TextEditingController Incharge_Name = TextEditingController();
  TextEditingController toTimeController =TextEditingController();

  bool Yes1 = false;
  bool No1 = false;

  bool Yes2 = false;
  bool No2= false;

  bool Yes3 = false;
  bool No3 = false;

  bool Yes4 = false;
  bool No4 = false;

  bool Yes5 = false;
  bool No5 = false;

  bool Yes6 = false;
  bool No6 = false;

  TextEditingController Padlock_No1 = TextEditingController();
  TextEditingController Remarks1 = TextEditingController();

  TextEditingController Padlock_No2 = TextEditingController();
  TextEditingController Remarks2 = TextEditingController();

  TextEditingController Padlock_No3 = TextEditingController();
  TextEditingController Remarks3 = TextEditingController();


  TextEditingController Padlock_No4 = TextEditingController();
  TextEditingController Remarks4 = TextEditingController();


  TextEditingController Padlock_No5 = TextEditingController();
  TextEditingController Remarks5 = TextEditingController();


  TextEditingController Padlock_No6 = TextEditingController();
  TextEditingController Remarks6 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double textFieldWidth = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lock Out and Tag Out Certificate'),
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
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Container(
                        child: Text(
                          'Applied By Permit Applicant(Applicant has to take clearance from all concerned department)',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      height: 60,
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Date of issue:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),

                          Container(
                            width: 180,
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
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      height: 60,
                      child: Row(
                        children: [

                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Time:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),

                          Container(
                            width: 180,
                            height: 40,
                            child: TextField(
                              onChanged: (value){
                                certificateData.timeController = value ;
                              },
                              controller: toTimeController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
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
                                    certificateData.time = formattedTime;
                                  });
                                }
                              },
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
                            width: 190,
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
                              itemWidth: 164,
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
                            width: 190,
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
                            width: 190,
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
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Equipment to be isolated:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: textFieldWidth,
                            child: TextFormField(
                              onChanged: (value) {
                                certificateData.equipment_to_be_isolated = value;
                              },
                              controller: Equipment_to_be_isolated,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
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
                      width:300,
                      child: Text('Electrical Isolation',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),




                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Switched off:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes1,
                              onChanged: (value) {
                                setState(() {
                                  Yes1 = value!;
                                  No1 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No1,
                              onChanged: (value) {
                                setState(() {
                                  No1 = value!;
                                  Yes1= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),

                  ),
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:'),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller:Padlock_No1,
                            onChanged: (value){
                              certificateData.padlock_no1 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width:350,
                      child: TextFormField(
                        maxLines: 4,
                        controller: Remarks1,
                        onChanged: (value){
                          certificateData.remarks1 = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Remark'
                        ),
                      ),
                    ),
                  ),



                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Main Fuse removed:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes2,
                              onChanged: (value) {
                                setState(() {
                                  Yes2 = value!;
                                  No2 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No2,
                              onChanged: (value) {
                                setState(() {
                                  No2 = value!;
                                  Yes2= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:'),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller:Padlock_No2,
                            onChanged: (value){
                              certificateData.padlock_no2 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width:350,
                      child: TextFormField(
                        maxLines: 4,
                        controller: Remarks2,
                        onChanged: (value){
                          certificateData.remarks2 = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Remark'
                        ),
                      ),
                    ),
                  ),




                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Control Fuses:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes3,
                              onChanged: (value) {
                                setState(() {
                                  Yes3 = value!;
                                  No3 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No3,
                              onChanged: (value) {
                                setState(() {
                                  No3 = value!;
                                  Yes3= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:'),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller:Padlock_No3,
                            onChanged: (value){
                              certificateData.padlock_no3 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(
                      width:350,
                      child: TextFormField(
                        maxLines: 4,
                        controller: Remarks3,
                        onChanged: (value){
                          certificateData.remarks3 = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Remark'
                        ),
                      ),
                    ),
                  ),




                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Padlocking:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes4,
                              onChanged: (value) {
                                setState(() {
                                  Yes4 = value!;
                                  No4 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No4,
                              onChanged: (value) {
                                setState(() {
                                  No4 = value!;
                                  Yes4= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:'),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller:Padlock_No4,
                            onChanged: (value){
                              certificateData.padlock_no4 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width:350,
                      child: TextFormField(
                        maxLines: 4,
                        controller: Remarks4,
                        onChanged: (value){
                          certificateData.remarks4 = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Remark'
                        ),
                      ),
                    ),
                  ),





                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Breakers:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes5,
                              onChanged: (value) {
                                setState(() {
                                  Yes5 = value!;
                                  No5 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No5,
                              onChanged: (value) {
                                setState(() {
                                  No5 = value!;
                                  Yes5= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:'),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            controller:Padlock_No5,
                            onChanged: (value){
                              certificateData.padlock_no5 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 350,
                      child: TextFormField(
                        maxLines: 4,
                        controller: Remarks5,
                        onChanged: (value){
                          certificateData.remarks5 = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Remark'
                        ),
                      ),
                    ),
                  ),


                  Container(
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 150,
                              child: Text(
                                'Other Precations:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Radio(
                              value: true,
                              groupValue: Yes6,
                              onChanged: (value) {
                                setState(() {
                                  Yes6 = value!;
                                  No6 = !value;

                                });
                              }),
                          Text('Yes'),
                          Radio(
                              value: true,
                              groupValue: No6,
                              onChanged: (value) {
                                setState(() {
                                  No6 = value!;
                                  Yes6= !value;

                                });
                              }),
                          Text('No'),
                        ]
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width:textFieldWidth,
                          child: Text('Padlock No:',style: TextStyle(fontSize: 16),),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller:Padlock_No6,
                            onChanged: (value){
                              certificateData.padlock_no6 = value;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      maxLines: 4,
                      controller: Remarks6,
                      onChanged: (value){
                        certificateData.remarks6 = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Remark'
                      ),
                    ),
                  ),


                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('I hereby confirm that above isolation and pracations have been taken,the equipment has been proven isolated by test and all concerned/affected individuals has been adequately informed',style: TextStyle(fontSize: 16,color: Colors.red),),
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('Name of the Aurthroised person Performed isolation',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,  // Choose the border color you want
                                  width: 1.0,           // Adjust the border width as needed
                                ),
                              ),
                              child: buildDropdown(
                                items: Aurthorizer,
                                value: selectedAurthorizer,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedAurthorizer = value;
                                  });
                                },
                                hintText: 'Name of Permit Authorizer',
                                itemWidth: 164,
                              ),
                            ),
                          )
                        ],
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('Receipt of Certificate by Person Incharge of Work',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Name:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: textFieldWidth,
                            child: TextFormField(
                              onChanged: (value) {
                                certificateData.incharge_name = value;
                              },
                              controller: Incharge_Name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Incharge Name',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),

            ),
          ),

        ],
      ),
    );
  }
}
