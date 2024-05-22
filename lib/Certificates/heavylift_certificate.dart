import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

// Data model for the certificate information
class CertificateData {
  String permitNo = '';
  String certificateNo = '';
  String location = '';
  String date = '';
  String datecontroller ='';
  String time ='';
  String timeController = '';
  String loadDescription = '';
  String loadWeight = '';
  String dimensions = '';
  String crane = '';
  String type = '';
  String model = '';
  String competent_person_test_certificate_validity = '';
  String maximum_operation_radius = '';
  String main_boom_length = '';
  String jib_length = '';
  String jib_offset = '';
  String attachment = '';
  String counter_weight = '';
  String vertical_clearance = '';

  String driving_licence ='';
  String medical_fitness ='';
  String certified_training='';
  String operator_name ='';

  String obstruction ='';
  String distance_from_power_lines ='';
  String ground_stability ='';
  String underground_utilities ='';
  String wooden_stoppers_or_mats_needed ='';

  String lifiting_capacity ='';
  String weight_of_load ='';
  String total_weight_of_accessories ='';
  String total_weight_of_lift ='';
  String engineer_name = '';
}

void main() {
  runApp(HeavyLiftCertify());
}

class HeavyLiftCertify extends StatelessWidget {
  const HeavyLiftCertify({Key? key}) : super(key: key);

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

  String? selectedOption;

  TextEditingController CertificateNo = TextEditingController();
  TextEditingController PermitNo = TextEditingController();


  TextEditingController DateInput = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  TextEditingController Load_description = TextEditingController();
  TextEditingController Load_weight = TextEditingController();
  TextEditingController Dimensions = TextEditingController();
  TextEditingController Crane = TextEditingController();
  TextEditingController Type = TextEditingController();
  TextEditingController Model = TextEditingController();
  TextEditingController Competent_Person_Test_Certificate_Validity =
  TextEditingController();

  TextEditingController Maximum_Operation_Radius = TextEditingController();
  TextEditingController Main_boom_length = TextEditingController();
  TextEditingController Jib_Length = TextEditingController();
  TextEditingController Jib_Offset = TextEditingController();
  TextEditingController Attachment = TextEditingController();
  TextEditingController Counter_weight = TextEditingController();
  TextEditingController Vertical_Clearance = TextEditingController();

  TextEditingController Driving_Licence = TextEditingController();
  TextEditingController Medical_Fitness = TextEditingController();
  TextEditingController Certified_training = TextEditingController();
  TextEditingController Operator_Name = TextEditingController();

  TextEditingController Obstruction = TextEditingController();
  TextEditingController Distance_from_power_lines = TextEditingController();
  TextEditingController Ground_Stability = TextEditingController();
  TextEditingController Underground_utilities = TextEditingController();
  TextEditingController Wooden_Stoppers_or_mats_needed = TextEditingController();


  TextEditingController Lifiting_Capacity = TextEditingController();
  TextEditingController Weight_of_Load = TextEditingController();
  TextEditingController Total_weight_of_accessories = TextEditingController();
  TextEditingController Total_weight_of_lift = TextEditingController();
  TextEditingController Engineer_Name = TextEditingController();



  CertificateData certificateData = CertificateData();


  String validationMessage = '';

  void sendData() async {
    if (_areAllFieldsFilled()) {
      final Map<String, dynamic> data = {
        'cert_6_id': certificateData.certificateNo,
        'pmt_no':certificateData.permitNo,
        'time':certificateData.time,
        'date':certificateData.date,
        'load_d':certificateData.loadDescription,
        'load_w':certificateData.loadWeight,
        'dimen':certificateData.dimensions,
        'crane':certificateData.crane,
        'type':certificateData.type,
        'model':certificateData.model,
        'cpt_cert':certificateData.competent_person_test_certificate_validity,
        'max_opr_rad':certificateData.maximum_operation_radius,
        'boom_len':certificateData.main_boom_length,
        'jib_length':certificateData.jib_length,
        'jib_offset':certificateData.jib_offset,
        'attachment':certificateData.attachment,
        'counter_weight_required':certificateData.counter_weight,
        'vcb':certificateData.vertical_clearance,
        'driving_lic':certificateData.driving_licence,
        'med_fit':certificateData.medical_fitness,
        'oem':certificateData.certified_training,
        'crane_operator':certificateData.operator_name,
        'obstruction':certificateData.obstruction,
        'dis_frm_power':certificateData.distance_from_power_lines,
        'ground_stability':certificateData.ground_stability,
        'underground':certificateData.underground_utilities,
        'mats':certificateData.wooden_stoppers_or_mats_needed,
        'lifting_cap':certificateData.lifiting_capacity,
        'weight_of_load':certificateData.weight_of_load,
        'weight_of_acc':certificateData.total_weight_of_accessories,
        'weight_of_lift':certificateData.total_weight_of_lift,
        'auth_eng':certificateData.engineer_name,


        'dic': selectedValue1 ?? '',
        'dept': selectedValue2 ?? '',
        'loc': selectedValue3 ?? '',
      };

      final response = await http.post(
        Uri.parse('http://192.168.85.149:8000/heavy'), // Update with your server's IP and port
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print('Response data: ${responseData['message']}');

        // Show response data as a pop-up message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Response Message'),
              content: Text(responseData['message']),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } else {
      setState(() {
        validationMessage = 'Please fill in all fields.';
      });
    }
  }

  bool _areAllFieldsFilled() {
    return CertificateNo.text.isNotEmpty &&
        PermitNo.text.isNotEmpty &&
        DateInput.text.isNotEmpty &&
        toTimeController.text.isNotEmpty &&
        Load_description.text.isNotEmpty &&
        Load_weight.text.isNotEmpty &&
        Dimensions.text.isNotEmpty &&
        Crane.text.isNotEmpty &&
        Type.text.isNotEmpty&&
        Model.text.isNotEmpty&&
        Competent_Person_Test_Certificate_Validity.text.isNotEmpty&&
        Maximum_Operation_Radius.text.isNotEmpty&&
        Main_boom_length.text.isNotEmpty&&
        Jib_Length.text.isNotEmpty&&
        Jib_Offset.text.isNotEmpty&&
        Attachment.text.isNotEmpty&&
        Counter_weight.text.isNotEmpty&&
        Vertical_Clearance.text.isNotEmpty&&
        Driving_Licence.text.isNotEmpty&&
        Medical_Fitness.text.isNotEmpty&&
        Certified_training.text.isNotEmpty&&
        Operator_Name.text.isNotEmpty&&
        Obstruction.text.isNotEmpty&&
        Distance_from_power_lines.text.isNotEmpty&&
        Ground_Stability.text.isNotEmpty&&
        Underground_utilities.text.isNotEmpty&&
        Wooden_Stoppers_or_mats_needed.text.isNotEmpty&&
        Lifiting_Capacity.text.isNotEmpty&&
        Weight_of_Load.text.isNotEmpty&&
        Total_weight_of_lift.text.isNotEmpty&&
        Engineer_Name.text.isNotEmpty&&
        selectedValue1 != null &&
        selectedValue2 != null &&
        selectedValue3 != null;
  }

  @override
  void initState() {
    super.initState();
    _clearValidationMessage();
  }

  void _clearValidationMessage() {
    setState(() {
      validationMessage = '';
    });
  }


  @override

  @override
  Widget build(BuildContext context) {
    double textFieldWidth = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Heavy Lift Certificate'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Padding(
                padding:  EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    Container(
                      width: 300,
                      child: Text('This is Not a Permit to Work',style: TextStyle(fontSize: 20,color: Colors.red),),),


                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Container(
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  controller: PermitNo,
                                  onChanged: (value) {
                                    certificateData.permitNo = value;
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Permit No:'),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Container(
                              height: 50,
                              width: 150,
                              child: TextFormField(
                                controller: CertificateNo,
                                onChanged: (value){
                                  certificateData.certificateNo=value;
                                },
                                decoration: InputDecoration(

                                    border: OutlineInputBorder(),
                                    hintText: 'Certificate No:'),
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
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                itemWidth: 164,
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
                                  certificateData.datecontroller = value;
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
                              width: 120,
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
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 300,
                      child: Text(
                        'Lift Information',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 185, 0),

                          child: Text(
                            'Description of Load:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(

                            child: TextFormField(
                              controller: Load_description,
                              onChanged: (value) {
                                certificateData.loadDescription = value;
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 170, 0),
                    child: Container(
                      width: 150,
                      child: Text(
                        'Weight of Load:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: TextFormField(
                        controller: Load_weight,
                        onChanged: (value) {
                          certificateData.loadWeight = value;
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 170, 0),
                    child: Container(
                      width: 150,
                      child: Text(
                        'Dimensions:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: TextFormField(
                        controller: Dimensions,
                        onChanged: (value) {
                          certificateData.dimensions = value;
                        },
                        maxLines: 4,
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
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Equipment & Load information',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Crane:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Crane,
                                onChanged: (value) {
                                  certificateData.crane = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(

                                'Type:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Type,
                                onChanged: (value) {
                                  certificateData.type = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Model:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Model,
                                onChanged: (value) {
                                  certificateData.model = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Competent Person Test Certificate Validity:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller:
                                Competent_Person_Test_Certificate_Validity,
                                onChanged: (value) {
                                  certificateData
                                      .competent_person_test_certificate_validity =
                                      value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Crane Informatio',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Maximum Operation Radius:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Maximum_Operation_Radius,
                                onChanged: (value) {
                                  certificateData.maximum_operation_radius =
                                      value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Main boom length:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Main_boom_length,
                                onChanged: (value) {
                                  certificateData.main_boom_length = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Jib Length:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Jib_Length,
                                onChanged: (value) {
                                  certificateData.jib_length = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Jib Offset:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Jib_Offset,
                                onChanged: (value) {
                                  certificateData.jib_offset = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 110,
                              child: Text(
                                'Attachments (Luffing,jib,Super lift):',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Attachment,
                                onChanged: (value) {
                                  certificateData.attachment = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 110,
                              child: Text(
                                'CounterWeight required:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Counter_weight,
                                onChanged: (value) {
                                  certificateData.counter_weight = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Vertical Clearance between boom Hook & load:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Vertical_Clearance,
                                onChanged: (value) {
                                  certificateData.vertical_clearance = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Competency of Crane Operator(Mention the Details)',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Driving Licence:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Driving_Licence,
                                onChanged: (value) {
                                  certificateData.driving_licence =
                                      value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Medical Fitness:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Medical_Fitness,
                                onChanged: (value) {
                                  certificateData.medical_fitness = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Certified(OEM)Trainig:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Certified_training,
                                onChanged: (value) {
                                  certificateData.certified_training = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(

                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Crane Operator Name:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Operator_Name,
                                onChanged: (value) {
                                  certificateData.operator_name = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Site Condition',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Obstruction:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Obstruction,
                                onChanged: (value) {
                                  certificateData.obstruction =
                                      value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Distance from power lines:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Distance_from_power_lines,
                                onChanged: (value) {
                                  certificateData.distance_from_power_lines = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Ground Stability:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Ground_Stability,
                                onChanged: (value) {
                                  certificateData.ground_stability = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(

                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Undeground utilities:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Underground_utilities,
                                onChanged: (value) {
                                  certificateData.underground_utilities = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(

                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Wooden Stoppers or mats needed ?:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Wooden_Stoppers_or_mats_needed,
                                onChanged: (value) {
                                  certificateData.wooden_stoppers_or_mats_needed = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
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
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Calculation',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Lift Capacity:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Lifiting_Capacity,
                                onChanged: (value) {
                                  certificateData.lifiting_capacity =
                                      value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Weight of load:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Weight_of_Load,
                                onChanged: (value) {
                                  certificateData.weight_of_load = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Total weight of accessories:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Total_weight_of_accessories,
                                onChanged: (value) {
                                  certificateData.total_weight_of_accessories = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(

                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Total weight of lift(N+O):',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Total_weight_of_lift,
                                onChanged: (value) {
                                  certificateData.total_weight_of_lift = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(

                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 10),
                            child: Container(
                              width: 100,
                              child: Text(
                                'Authorised Engineer Name:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 190,
                              child: TextFormField(
                                controller: Engineer_Name,
                                onChanged: (value) {
                                  certificateData.engineer_name = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
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
            padding:  EdgeInsets.all(10.0),
            child: Material(
              elevation: 30,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Padding(
                padding:  EdgeInsets.all(10.0),
                child: Container(
                  child: Text('*Authorised engineer must undergo Permit to Work,Lock Out and Tag Out, Working at Height,Cofined Space Entity Trainings',style: TextStyle(color: Colors.red),),
                ),
              ),
            ),
          ),

          Column(
            children: [
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    sendData(); // Call sendData() when the button is pressed
                  },
                  child: Text('Submit'),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  child: Text(
                    validationMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}