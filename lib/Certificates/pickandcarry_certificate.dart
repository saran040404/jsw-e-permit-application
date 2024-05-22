import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_search/dropdown_search.dart';


class CertificateData {
  String permitNo = '';
  String certificateNo = '';
  String nameOfApplicant ='';
  String nameOfAgency = '';
  String plant = '';
  String department = '';
  String hydra_work = '';
  String from_time = '';
  String to_time = '';
  String from_date = '';
  String to_date = '';
  String name_of_person_responsible1 ='';
  String name_of_person_responsible2 ='';
  String name_of_person_responsible3 ='';
  String name_of_person_responsible4 ='';
  String name_of_person_responsible5 ='';
  String name_of_person_responsible6 ='';
  String name_of_person_responsible7 ='';
  String name_of_person_responsible8 ='';
  String name_of_person_responsible9 ='';
  String name_of_person_responsible10 ='';
  String name_of_person_responsible11 ='';
  String name_of_person_responsible12 ='';
  String name_of_person_responsible13 ='';
  String name_of_person_responsible14 ='';
  String name_of_person_responsible15 ='';
  String name_of_person_responsible16 ='';
  String name_of_person_responsible17 ='';
  String name_of_person_responsible18 ='';
  String name_of_person_responsible19 ='';
  String name_of_person_responsible20 ='';
  String name_of_person_responsible21 ='';
  String name_of_person_responsible22 ='';



  String remark1 ='';
  String remark2 ='';
  String remark3 ='';
  String remark4 ='';
  String remark5 ='';
  String remark6 ='';
  String remark7 ='';
  String remark8 ='';
  String remark9 ='';
  String remark10 ='';
  String remark11 ='';
  String remark12 ='';
  String remark13 ='';
  String remark14 ='';
  String remark15 ='';
  String remark16 ='';
  String remark17 ='';
  String remark18 ='';
  String remark19 ='';
  String remark20 ='';
  String remark21 ='';
  String remark22 ='';


  String permit_holder_name ='';
}

class PickAndCarryApp extends StatelessWidget {
  const PickAndCarryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CertificateScreen(),
    );
  }
}

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({Key? key}) : super(key: key);

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {

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


  TextEditingController Name_Of_Person_Responsible1 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible2 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible3 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible4 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible5 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible6 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible7 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible8 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible9 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible10 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible11 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible12 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible13 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible14 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible15 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible16 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible17 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible18 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible19 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible20 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible21 = TextEditingController();
  TextEditingController Name_Of_Person_Responsible22 = TextEditingController();

  void autoFill() {
    // Get data from the first text field
    String data = Name_Of_Person_Responsible1.text;

    // Set data in the other text fields
    Name_Of_Person_Responsible2.text = data;
    Name_Of_Person_Responsible3.text = data;
    Name_Of_Person_Responsible4.text = data;
    Name_Of_Person_Responsible5.text = data;
    Name_Of_Person_Responsible6.text = data;
    Name_Of_Person_Responsible7.text = data;
    Name_Of_Person_Responsible8.text = data;
    Name_Of_Person_Responsible9.text = data;
    Name_Of_Person_Responsible10.text = data;
    Name_Of_Person_Responsible11.text = data;
    Name_Of_Person_Responsible12.text = data;
    Name_Of_Person_Responsible13.text = data;
    Name_Of_Person_Responsible14.text = data;
    Name_Of_Person_Responsible15.text = data;
    Name_Of_Person_Responsible16.text = data;
    Name_Of_Person_Responsible17.text = data;
    Name_Of_Person_Responsible18.text = data;
    Name_Of_Person_Responsible19.text = data;
    Name_Of_Person_Responsible20.text = data;
    Name_Of_Person_Responsible21.text = data;
    Name_Of_Person_Responsible22.text = data;
  }

  TextEditingController Remark1 = TextEditingController();
  TextEditingController Remark2 = TextEditingController();
  TextEditingController Remark3 = TextEditingController();
  TextEditingController Remark4 = TextEditingController();
  TextEditingController Remark5 = TextEditingController();
  TextEditingController Remark6 = TextEditingController();
  TextEditingController Remark7 = TextEditingController();
  TextEditingController Remark8 = TextEditingController();
  TextEditingController Remark9 = TextEditingController();
  TextEditingController Remark10 = TextEditingController();
  TextEditingController Remark11 = TextEditingController();
  TextEditingController Remark12 = TextEditingController();
  TextEditingController Remark13 = TextEditingController();
  TextEditingController Remark14 = TextEditingController();
  TextEditingController Remark15 = TextEditingController();
  TextEditingController Remark16 = TextEditingController();
  TextEditingController Remark17 = TextEditingController();
  TextEditingController Remark18 = TextEditingController();
  TextEditingController Remark19 = TextEditingController();
  TextEditingController Remark20 = TextEditingController();
  TextEditingController Remark21 = TextEditingController();
  TextEditingController Remark22 = TextEditingController();

  void Remark_autoFill() {
    // Get data from the first text field
    String data = Remark1.text;

    // Set data in the other text fields
    Remark2.text = data;
    Remark3.text = data;
    Remark4.text = data;
    Remark5.text = data;
    Remark6.text = data;
    Remark7.text = data;
    Remark8.text = data;
    Remark9.text = data;
    Remark10.text = data;
    Remark11.text = data;
    Remark14.text = data;
    Remark15.text = data;
    Remark16.text = data;
    Remark17.text = data;
    Remark18.text = data;
    Remark19.text = data;
    Remark20.text = data;
    Remark21.text = data;
    Remark22.text = data;

  }

  CertificateData certificateData = CertificateData();

  TextEditingController permitNoController = TextEditingController();
  TextEditingController certificateNoController = TextEditingController();
  TextEditingController nameOfApplicantController = TextEditingController();
  TextEditingController nameOfAgencyController = TextEditingController();
  TextEditingController Hydra_Work_Controller = TextEditingController();
  TextEditingController From_time = TextEditingController();
  TextEditingController To_time = TextEditingController();
  TextEditingController From_DateInput = TextEditingController();
  TextEditingController To_DateInput = TextEditingController();


  bool Activity1_Yes1= false;
  bool Activity1_No1= false;

  bool Activity1_Yes2= false;
  bool Activity1_No2= false;

  bool Activity1_Yes3= false;
  bool Activity1_No3= false;

  bool Activity1_Yes4= false;
  bool Activity1_No4= false;

  bool Activity1_Yes5= false;
  bool Activity1_No5= false;

  bool Activity2_Yes1= false;
  bool Activity2_No1= false;

  bool Activity2_Yes2= false;
  bool Activity2_No2= false;

  bool Activity2_Yes3= false;
  bool Activity2_No3= false;

  bool Activity2_Yes4= false;
  bool Activity2_No4= false;

  bool Activity2_Yes5= false;
  bool Activity2_No5= false;

  bool Activity2_Yes6= false;
  bool Activity2_No6= false;

  bool Activity2_Yes7= false;
  bool Activity2_No7= false;

  bool Activity2_Yes8= false;
  bool Activity2_No8= false;

  bool Activity2_Yes9= false;
  bool Activity2_No9= false;

  bool Activity2_Yes10= false;
  bool Activity2_No10= false;

  bool Activity2_Yes11= false;
  bool Activity2_No11= false;

  bool Activity2_Yes12= false;
  bool Activity2_No12= false;

  bool Activity2_Yes13= false;
  bool Activity2_No13= false;

  bool Activity2_Yes14= false;
  bool Activity2_No14= false;

  bool Activity2_Yes15= false;
  bool Activity2_No15= false;

  bool Activity2_Yes16= false;
  bool Activity2_No16= false;



  TextEditingController Permit_Holder_name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double textFieldWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pick and Carry Certificate'),
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
                        'This is Not Permit to Work',
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
                                controller: permitNoController,
                                onChanged: (value) {
                                  setState(() {
                                    certificateData.permitNo = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Permit No:',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Container(
                              height: 50,
                              width: 150,
                              child: TextFormField(
                                controller: certificateNoController,
                                onChanged: (value) {
                                  setState(() {
                                    certificateData.certificateNo = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Certificate No:',
                                ),
                              ),
                            ),
                          ),
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
                              'Name of Applicant:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: textFieldWidth,
                              child: TextFormField(
                                controller: nameOfApplicantController,
                                onChanged: (value) {
                                  setState(() {
                                    certificateData.nameOfApplicant = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Applicant Name',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(

                              child: Text(
                                'Authorizer Name:',
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
                              'Name of the Working Agency:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: textFieldWidth,
                              child: TextFormField(
                                controller: nameOfAgencyController,
                                onChanged: (value) {
                                  setState(() {
                                    certificateData.nameOfAgency = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Agency Name',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Row(
                        children: [
                          Container(
                            width: textFieldWidth,
                            child: Text(
                              'Hydra work:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: textFieldWidth,
                              child: TextFormField(
                                controller: Hydra_Work_Controller,
                                onChanged: (value) {
                                  setState(() {
                                    certificateData.hydra_work = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Type of work',
                                ),
                              ),
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
                          'Job Duration Time:',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                      ),
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
                                  controller: From_time,
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
                                        From_time.text = formattedTime;
                                        certificateData.from_time = formattedTime;
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
                                  controller: To_time,
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
                                        To_time.text = formattedTime;
                                        certificateData.to_time = formattedTime;
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
                    Container(
                      width: 300,
                      child: Text(
                        'Date:',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: 60,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                width: 140,
                                height: 40,
                                child: TextFormField(
                                  controller: From_DateInput,
                                  onChanged: (value) {
                                    certificateData.from_date = value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.calendar_today),
                                    labelText: "Start Date:",
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
                                        From_DateInput.text = formattedDate;
                                        certificateData.from_date = formattedDate;
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
                                child: TextFormField(
                                  controller: To_DateInput,
                                  onChanged: (value) {
                                    certificateData.to_date = value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.calendar_today),
                                    labelText: "End Date:",
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
                                        To_DateInput.text = formattedDate;
                                        certificateData.to_date = formattedDate;
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
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      width:300,
                      child: Text('Activities(Sequence of Work)',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),



                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('1.General Check to be done before Starting rthe Pick and Carry',style: TextStyle(fontSize: 16),),
                    ),

                  ),
                  Container(
                    width: 300,
                    child: Text("Safety Precautions:",style: TextStyle(fontSize: 20,color: Colors.red),),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      width: 300,
                      child: Text('Complete Person Test Certificate',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Container(
                            width: 100,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child:TextFormField(
                            controller: Name_Of_Person_Responsible1,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible1 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),

                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: ElevatedButton(
                            onPressed: autoFill,
                            child: Text('Auto Fill'),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity1_Yes1, onChanged: (value){
                        setState(() {
                          Activity1_Yes1 = value!;
                          Activity1_No1 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity1_No1, onChanged: (value){
                        setState(() {
                          Activity1_No1 = value!;
                          Activity1_Yes1 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Container(
                            width: 100,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child:TextFormField(
                            controller: Remark1,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark1 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),

                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: ElevatedButton(
                            onPressed: Remark_autoFill,
                            child: Text('Auto Fill'),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('2.Operation Fitness (a)OEM Training (b)License (c)Medical Fitness',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible2,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible2 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity1_Yes2, onChanged: (value){
                        setState(() {
                          Activity1_Yes2 = value!;
                          Activity1_No2 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity1_No2, onChanged: (value){
                        setState(() {
                          Activity1_No2 = value!;
                          Activity1_Yes2 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark2,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark2 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      child: Text('3.Check the crane For any leackage in Hydraulic System',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible3,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible3 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity1_Yes3, onChanged: (value){
                        setState(() {
                          Activity1_Yes3 = value!;
                          Activity1_No3 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity1_No3, onChanged: (value){
                        setState(() {
                          Activity1_No3 = value!;
                          Activity1_Yes3 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark3,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark3 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('4.Inspect the boom for any damages or defects',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible4,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible4 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity1_Yes4, onChanged: (value){
                        setState(() {
                          Activity1_Yes4 = value!;
                          Activity1_No4 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity1_No4, onChanged: (value){
                        setState(() {
                          Activity1_No4 = value!;
                          Activity1_Yes4 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark4,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark4 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('5.Before Starting the Pick and Carry crane will be done as per Pick and carry crane manufature chart',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible5,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible5 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity1_Yes5, onChanged: (value){
                        setState(() {
                          Activity1_Yes5 = value!;
                          Activity1_No5 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity1_No5, onChanged: (value){
                        setState(() {
                          Activity1_No5 = value!;
                          Activity1_Yes5 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark5,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark5 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



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

                      child: Text('2.Handling of Material by Pick and carry carne',style: TextStyle(fontSize: 20,color: Colors.red),),
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
                      width: 300,
                      child: Text('Toppling of Picking and carry crane',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),

                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Proper handling of Pick and carry crane will be done as per Pick and Carry crane manufacture chart',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible6,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible6 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes1, onChanged: (value){
                        setState(() {
                          Activity2_Yes1 = value!;
                          Activity2_No1= !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No1, onChanged: (value){
                        setState(() {
                          Activity2_No1 = value!;
                          Activity2_Yes1 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark6,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark6 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Pick and carry movement area(40 mtrs with in fabrication yard)wil be clear & 8m width road will be provided',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible7,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible7 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes2, onChanged: (value){
                        setState(() {
                          Activity2_Yes2 = value!;
                          Activity2_No2= !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No2, onChanged: (value){
                        setState(() {
                          Activity2_No2 = value!;
                          Activity2_Yes2 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark7,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark7 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Container(
                      width: 300,
                      child: Text('Flag Man will be provided',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible8,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible8 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes3, onChanged: (value){
                        setState(() {
                          Activity2_Yes3 = value!;
                          Activity2_No3 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No3, onChanged: (value){
                        setState(() {
                          Activity2_No3 = value!;
                          Activity2_Yes3 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark8,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark8 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Pick and carry crane to be placed on level ground',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible9,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible9 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes4, onChanged: (value){
                        setState(() {
                          Activity2_Yes4 = value!;
                          Activity2_No4 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No4, onChanged: (value){
                        setState(() {
                          Activity2_No4 = value!;
                          Activity2_Yes4 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark9,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark9 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



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
                      width: 300,
                      child: Text('Fall of Material',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),



                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Overloading of Pick and carry crane will not allow while working at site',style: TextStyle(fontSize: 16),),
                    ),
                  ), Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible10,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible10 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes5, onChanged: (value){
                        setState(() {
                          Activity2_Yes5 = value!;
                          Activity2_No5 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No5, onChanged: (value){
                        setState(() {
                          Activity2_No5 = value!;
                          Activity2_Yes5 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark10,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark10 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: Container(

                      child: Text('Tested slings & "D" Shakeles should be used',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible11,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible11 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes6, onChanged: (value){
                        setState(() {
                          Activity2_Yes6 = value!;
                          Activity2_No6 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No6, onChanged: (value){
                        setState(() {
                          Activity2_No6 = value!;
                          Activity2_Yes6 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark11,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark11 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('Hit by Pick and carry crane to men & materials:',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('No oblique pulling to be with Pick and carry crane',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible12,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible12 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes7, onChanged: (value){
                        setState(() {
                          Activity2_Yes7 = value!;
                          Activity2_No7 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No7, onChanged: (value){
                        setState(() {
                          Activity2_No7 = value!;
                          Activity2_Yes7= !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark12,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark12 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('No man & matereial will stand with in movement area of Pick and carry crane',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible13,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible13 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes8, onChanged: (value){
                        setState(() {
                          Activity2_Yes8 = value!;
                          Activity2_No8 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No8, onChanged: (value){
                        setState(() {
                          Activity2_No8 = value!;
                          Activity2_Yes8 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark13,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark13 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Proper guard will be provided for front & rear wheel to avoid accident',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible14,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible14 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes9, onChanged: (value){
                        setState(() {
                          Activity2_Yes9 = value!;
                          Activity2_No9 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No9, onChanged: (value){
                        setState(() {
                          Activity2_No9 = value!;
                          Activity2_Yes9 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark14,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark14 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),


          Padding(
            padding:EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('HIT by crane to fule & OXYGEN cylinders:',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Store room of Oxygen & fule cylinders will be provided',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible15,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible15 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes10, onChanged: (value){
                        setState(() {
                          Activity2_Yes10 = value!;
                          Activity2_No10 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No10, onChanged: (value){
                        setState(() {
                          Activity2_No10 = value!;
                          Activity2_Yes10= !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark15,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark15 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Oxygen cylinders should not kept with in crane movement area',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible16,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible16 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes11, onChanged: (value){
                        setState(() {
                          Activity2_Yes11 = value!;
                          Activity2_No11 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No11, onChanged: (value){
                        setState(() {
                          Activity2_No11 = value!;
                          Activity2_Yes11 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark16,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark16 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),



          Padding(
            padding:EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      width: 300,
                      child: Text('Failing of crane Brakes:',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Fitness proof vechiles will be provided for work',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible17,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible17 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes12, onChanged: (value){
                        setState(() {
                          Activity2_Yes12 = value!;
                          Activity2_No12 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No12, onChanged: (value){
                        setState(() {
                          Activity2_No12 = value!;
                          Activity2_Yes12= !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark17,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark17 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('VT trained person will be engaged for operating crane',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible18,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible18 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes13, onChanged: (value){
                        setState(() {
                          Activity2_Yes13 = value!;
                          Activity2_No13 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No13, onChanged: (value){
                        setState(() {
                          Activity2_No13 = value!;
                          Activity2_Yes13 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark18,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark18 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),



          Padding(
            padding:EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(
                      child: Text('Pick and carry Operation in load lifting & shifting condition:',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('Foreman will be provided for supervision which lifiting material with in 40mts in fabrication yard',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible19,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible19 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes14, onChanged: (value){
                        setState(() {
                          Activity2_Yes14 = value!;
                          Activity2_No14 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No14, onChanged: (value){
                        setState(() {
                          Activity2_No14 = value!;
                          Activity2_Yes14= !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark19,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark19 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(

                      child: Text('After unloading the lifting material crane operation will be stopped',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible20,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible20 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes14, onChanged: (value){
                        setState(() {
                          Activity2_Yes14 = value!;
                          Activity2_No14 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No14, onChanged: (value){
                        setState(() {
                          Activity2_No14 = value!;
                          Activity2_Yes14 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark20,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark20 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Container(

                      child: Text('Collosion of Pick and carry crane',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                  ),



                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      width: 300,
                      child: Text('Minimum 6m distantance to maitain from crane working zone',style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible21,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible21 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes15, onChanged: (value){
                        setState(() {
                          Activity2_Yes15 = value!;
                          Activity2_No15 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No15, onChanged: (value){
                        setState(() {
                          Activity2_No15 = value!;
                          Activity2_Yes15 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark21,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark21 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      child: Text('Pick and carry crane should not travel near the crane while working',style: TextStyle(fontSize: 16),),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Name of the Person Responsible',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Name_Of_Person_Responsible22,
                            onChanged: (value) {
                              setState(() {
                                certificateData.name_of_person_responsible22 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(value: true, groupValue: Activity2_Yes16, onChanged: (value){
                        setState(() {
                          Activity2_Yes16 = value!;
                          Activity2_No16 = !value;
                        });
                      }),
                      Text('YES'),
                      Radio(value: true, groupValue: Activity2_No16, onChanged: (value){
                        setState(() {
                          Activity2_No16 = value!;
                          Activity2_Yes16 = !value;
                        });
                      }),
                      Text("NO"),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            width: textFieldWidth,
                            child: Text(
                              'Reference to document/criteria and remarks',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextFormField(
                            controller: Remark22,
                            onChanged: (value) {
                              setState(() {
                                certificateData.remark22 = value;
                              });
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      children: [
                        Container(
                          width: textFieldWidth,
                          child: Text(
                            'Name of the Permit Holder:',style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width:textFieldWidth,
                            child:TextFormField(
                              controller: Permit_Holder_name,
                              onChanged: (value){
                                setState(() {
                                  certificateData.permit_holder_name = value;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Material(
            child: Column(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}
