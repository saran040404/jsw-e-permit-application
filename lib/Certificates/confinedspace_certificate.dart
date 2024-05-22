import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_search/dropdown_search.dart';




class CertificateData {
  String permit_no = '';
  String certificate_no = '';
  String applicantName = '';
  String location = '';
  String date = '';
  String plant = '';
  String confined_space_id = '';
  String confined_space_describ = '';
  String work_describ = '';
  String equipment_used = '';
  String welding = '';
  String burning = '';
  String open_flame = '';
  String chipping = '';
  String grinding = '';
  String drilling = '';
  String electrical = '';
  String rotating_space = '';
  String task_generated = '';
  String other_hazards = '';
  String area_alarm_no = '';
  String fire_safety_other = '';
  String steam = '';
  String fill_and_drain = '';
  String remove_deposit = '';
  String other_equipment = '';
  String neturalize_content = '';
  String commun_other = '';
  String additional_assistance = '';
  String other_obseravations = '';
  String person_carring_out_the_test = '';
  String area_in_charge_name ='';
  String perodic_checking ='';

  String from_time = '';
  String to_time = '';

  String from_date = '';
  String to_date = '';

  String r1 ='';
  String r2 ='';
  String r3 ='';
  String r4 ='';
  String r5 ='';
  String r6 ='';
  String r7 ='';
  String er1 ='';
  String er2 ='';

  String applicant1='';
  String holder1='';
  String aurthoriser1='';

  String applicant2='';
  String holder2='';
  String aurthoriser2='';

  String per_appln_date='';
  String per_holder_date='';
  String per_auth_date='';

  String ret_appln_date='';
  String ret_holder_date='';
  String ret_auth_date='';

  String per_appln_time='';
  String per_holder_time='';
  String per_auth_time='';


  String ret_appln_time='';
  String ret_holder_time='';
  String ret_auth_time='';

}


class confined_space_certi extends StatelessWidget {
  const confined_space_certi({super.key});

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

  TextEditingController Certificate_No = TextEditingController();
  TextEditingController Permit_No = TextEditingController();
  TextEditingController Sign = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController DateInput = TextEditingController();
  TextEditingController Plant = TextEditingController();
  TextEditingController Confined_Space_Identification = TextEditingController();
  TextEditingController Confined_Space_Location = TextEditingController();
  TextEditingController Description_of_Confined_Space = TextEditingController();
  TextEditingController Work_Description = TextEditingController();
  TextEditingController Equipment_for_this_work = TextEditingController();
  TextEditingController Welding = TextEditingController();
  TextEditingController Open_flame = TextEditingController();
  TextEditingController Burning = TextEditingController();
  TextEditingController Chipping = TextEditingController();
  TextEditingController Grinding = TextEditingController();
  TextEditingController Driling = TextEditingController();
  TextEditingController Electrical = TextEditingController();
  TextEditingController Rotating_Space = TextEditingController();
  TextEditingController Task_generated = TextEditingController();
  TextEditingController textBoxController = TextEditingController();

  TextEditingController alarm_no = TextEditingController();
  TextEditingController Fire_safety = TextEditingController();

  TextEditingController steam = TextEditingController();
  TextEditingController fill_and_drain = TextEditingController();
  TextEditingController remove_deposits = TextEditingController();
  TextEditingController Other_equipment = TextEditingController();
  TextEditingController neutralize_contents = TextEditingController();
  TextEditingController commun_other = TextEditingController();
  TextEditingController Additional_Assistance = TextEditingController();
  TextEditingController Other_Observations = TextEditingController();
  TextEditingController Person_Carring_Out_the_test = TextEditingController();

  TextEditingController R1 = TextEditingController();
  TextEditingController R2 = TextEditingController();
  TextEditingController R3 = TextEditingController();
  TextEditingController R4 = TextEditingController();
  TextEditingController R5 = TextEditingController();
  TextEditingController R6 = TextEditingController();
  TextEditingController R7 = TextEditingController();
  TextEditingController ER1 = TextEditingController();
  TextEditingController ER2 = TextEditingController();

  bool Other = false;
  bool Toxic_Material = false;
  bool Corrosive_Material = false;
  bool Biological_agent = false;
  bool Chemical_And_Jet_Clening = false;
  bool Disconnect_and_blank = false;
  bool Splling_material = false;
  bool Flamable_Material = false;
  bool Electrical_close_clearance = false;
  bool Fall_prevention = false;
  bool Hazardous_material = false;
  bool Adjacent_Process = false;
  bool Hot_equipment = false;
  bool Radioactivity = false;
  bool Tightening = false;
  bool Welding_fumes = false;

  bool isChecked = false;

  bool Protect_against = false;

  bool Fresh_air_blower = false;
  bool Rubber_boot = false;
  bool Fresh_air_mask = false;
  bool Ear_Protection = false;
  bool Escape_air_pack = false;
  bool Other_barrier = false;
  bool Dust_respirator = false;
  bool Evacuation_instruction = false;
  bool Coverall = false;
  bool Two_escape_routes = false;
  bool Safety_shower = false;
  bool Life_line_harness = false;
  bool Acid_suit = false;
  bool Chemically_resistant = false;
  bool Acid_hood = false;
  bool Life_line_belt = false;
  bool Face_sheild = false;
  bool Fire_alaram = false;
  bool Chemical_goggles = false;
  bool Escape_ladder = false;
  bool Rubber_glove = false;
  bool Mechanical_extraction_device = false;

  bool Isolate = false;
  bool Lock_out = false;
  bool Disconnect_blank = false;
  bool Post_work_sign = false;
  bool Rope_off_area = false;
  bool Erect_barricade = false;
  bool Block_roadways = false;
  bool Protect_against_external = false;

  bool Lock_out_circuits = false;
  bool Pull_fuses = false;
  bool Spark_containers_and_sheild = false;
  bool Welding_arc_protection = false;
  bool Ground_fault_interruption = false;
  bool Proper_grounding = false;

  bool Specify_fire_watch = false;
  bool Area_alarm_no = false;
  bool Fire_hose_laid_out = false;
  bool Water_hose_running = false;
  bool Keep_area_wet = false;
  bool Cover_sewer_openings = false;
  bool CO2_extinguisher = false;
  bool Dry_poweder_extinguisher = false;
  bool Fire_safety_other = false;

  bool Steam = false;
  bool Fill_and_drain = false;
  bool Remove_deposits = false;
  bool equipment = false;
  bool Neutralize_contents = false;


  bool Telephone = false;
  bool Radio = false;
  bool Commu_Other = false;
  bool additional = false;

  bool isVisible = false;


  bool CL1_Yes = false;
  bool CL1_No = false;
  bool CL1_Na = false;

  bool CL2_Yes = false;
  bool CL2_No = false;
  bool CL2_Na = false;

  bool CL3_Yes = false;
  bool CL3_No = false;
  bool CL3_Na = false;

  bool CL4_Yes = false;
  bool CL4_No = false;
  bool CL4_Na = false;

  bool CL5_Yes = false;
  bool CL5_No = false;
  bool CL5_Na = false;

  bool CL6_Yes = false;
  bool CL6_No = false;
  bool CL6_Na = false;

  bool CL7_Yes = false;
  bool CL7_No = false;
  bool CL7_Na = false;

  bool CL8_Yes = false;
  bool CL8_No = false;
  bool CL8_Na = false;

  bool CL9_Yes = false;
  bool CL9_No = false;
  bool CL9_Na = false;

  bool CL10_Yes = false;
  bool CL10_No = false;
  bool CL10_Na = false;

  bool CL11_Yes = false;
  bool CL11_No = false;
  bool CL11_Na = false;


  TextEditingController Area_in_charge_Name = TextEditingController();
  TextEditingController Perodic_Checking = TextEditingController();

  TextEditingController From_time = TextEditingController();
  TextEditingController To_time = TextEditingController();
  TextEditingController From_DateInput = TextEditingController();
  TextEditingController To_DateInput = TextEditingController();

  TextEditingController Applicant1 = TextEditingController();
  TextEditingController Permit_Holder1 = TextEditingController();
  TextEditingController Aurthoriser1 = TextEditingController();

  TextEditingController Applicant2 = TextEditingController();
  TextEditingController Permit_Holder2 = TextEditingController();
  TextEditingController Aurthoriser2 = TextEditingController();

  TextEditingController Per_appln_date = TextEditingController();
  TextEditingController Per_holder_date = TextEditingController();
  TextEditingController Per_auth_date = TextEditingController();

  TextEditingController RET_appln_date = TextEditingController();
  TextEditingController RET_holder_date = TextEditingController();
  TextEditingController RET_auth_date = TextEditingController();

  TextEditingController Per_appln_Time = TextEditingController();
  TextEditingController Per_holder_Time = TextEditingController();
  TextEditingController Per_auth_Time = TextEditingController();

  TextEditingController RET_appln_Time = TextEditingController();
  TextEditingController RET_holder_Time = TextEditingController();
  TextEditingController RET_auth_Time = TextEditingController();




  @override
  Widget build(BuildContext context) {
    double textFieldWidth = MediaQuery
        .of(context)
        .size
        .width / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text('Confined Space Certificate'),
      ),
      body:
      ListView(children: [
        Column(
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
                            'THIS IS NOT A PERMIT TO WORK',
                            style: TextStyle(fontSize: 19.7,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
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
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            children: [
                              Container(
                                width: textFieldWidth,
                                child: Text('Applicant Name:',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Expanded(
                                child: Container(
                                  width: textFieldWidth,
                                  child: TextFormField(
                                      onChanged: (value) {
                                        certificateData.applicantName = value;
                                      },
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Applicant Name'),
                                      controller: Name),
                                ),
                              ),
                            ],
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
                                child: Text('Confined Space Identification NO:',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Container(
                                width: 180,
                                child: TextFormField(
                                    onChanged: (value) {
                                      certificateData.confined_space_id = value;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: Confined_Space_Identification),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text('Description of Confined Space:',
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                              onChanged: (value) {
                                certificateData.confined_space_describ = value;
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              controller: Description_of_Confined_Space),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text('Work Description:',
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                              onChanged: (value) {
                                certificateData.work_describ = value;
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              controller: Work_Description),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              'Equipement/Tools?Chemicals used for this Work',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                              onChanged: (value) {
                                certificateData.equipment_used = value;
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              controller: Equipment_for_this_work),
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
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Type of Hazard Work',
                            style: TextStyle(fontSize: 20,color: Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,

                          child: Text(
                            'Combution Hazards',
                            style: const TextStyle(fontSize: 16,color: Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          children: [
                            Container(

                              width:textFieldWidth,
                              child: Text(
                                'Welding:',style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.welding =value;
                                },
                                controller: Welding,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
                                'Burning:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                controller: Burning,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),

                            ),
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
                                'Open flame:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.open_flame =value;
                                },
                                controller: Open_flame,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15)),

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Spark Producing',
                            style: TextStyle(fontSize: 20,color: Colors.red),
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
                                'Chipping:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.chipping=value;
                                },
                                controller: Chipping,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
                                'Grinding:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.grinding =value;
                                },
                                controller: Grinding,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
                              width:textFieldWidth,
                              child: Text(
                                'Drilling:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.drilling = value;
                                },
                                controller: Driling,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
                                'Electrical:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width: 200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.electrical=value;
                                },
                                controller: Electrical,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
                                'Rotating_Space:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              width:200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.rotating_space =value;
                                },
                                controller: Rotating_Space,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

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
                                'Task_generated:',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Container(
                              width:200,
                              child: TextFormField(
                                onChanged: (value){
                                  certificateData.task_generated =value;
                                },
                                controller: Task_generated,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15)),

                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Other Hazards',
                          style: TextStyle(fontSize: 20,color: Colors.red),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Toxic_Material,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Toxic_Material = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Toxi Material',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Corrosive_Material,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Corrosive_Material = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Corrosive material',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Biological_agent,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Biological_agent = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Biological agent',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Chemical_And_Jet_Clening,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Chemical_And_Jet_Clening = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Chemical and jet cleaning ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Disconnect_and_blank,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Disconnect_and_blank = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Disconnect and blank',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),

                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Splling_material,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Splling_material = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Spilled material',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Flamable_Material,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Flamable_Material = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Flammable material',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Electrical_close_clearance,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Electrical_close_clearance = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Electrical close clearance',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Fall_prevention,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Fall_prevention = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Fall prevention',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Hazardous_material,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Hazardous_material = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Hazardous material from drains,sumps',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Adjacent_Process,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Adjacent_Process = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Adjacent Process',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Hot_equipment,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Hot_equipment = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Hot equipment or process',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Radioactivity,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Radioactivity = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Radioactivity',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: 170,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Checkbox(
                                                      value: Other,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Other = value!;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      'Other',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (Other)
                                            Container(
                                              child: TextFormField(
                                                onChanged: (value){
                                                  certificateData.other_hazards =value;
                                                },
                                                controller: textBoxController,
                                                decoration: InputDecoration(
                                                  labelText: 'Enter Text',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),

                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                                value: Tightening,
                                onChanged: (bool? value) {
                                  setState(() {
                                    Tightening = value!;
                                  });
                                }),
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Tightening joints under pressure',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                                value: Welding_fumes,
                                onChanged: (bool? value) {
                                  setState(() {
                                    Welding_fumes = value!;
                                  });
                                }),
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Welding fumes and heat',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            Container(
                              width: textFieldWidth,
                              child: Text(
                                'Working on unguarded equipment',
                                style: TextStyle(fontSize: 16),
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
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          width: 300,
                          child: Text(
                            '3. Safety Prerarations:',
                            style: TextStyle(fontSize: 20,color: Colors.red),
                          ),
                        ),
                      ),

                      Padding(
                        padding:EdgeInsets.all(10.0),
                        child: Container(

                          width: 300,
                          child: Text(
                            'Personal Safety:',
                            style: TextStyle(fontSize: 16,color:Colors.red),
                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(

                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: Protect_against,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Protect_against = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Protect against',
                                            style: TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (Protect_against)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    controller: textBoxController,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),


                      Row(
                        children: [

                          Row(
                            children: [
                              Checkbox(
                                  value: Fresh_air_blower,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Fresh_air_blower = value!;
                                    });
                                  }),
                              Container(
                                width: textFieldWidth,
                                child: Text(
                                  'Fresh air blower',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),


                          Row(
                            children: [
                              Checkbox(
                                  value: Rubber_boot,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Rubber_boot = value!;
                                    });
                                  }),
                              Container(
                                width: textFieldWidth,
                                child: Text(
                                  'Rubber Boot',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: Fresh_air_mask,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Fresh_air_mask = value!;
                                    });
                                  }),
                              Container(
                                width: textFieldWidth,
                                child: Text(
                                  'Fresh air mask',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Checkbox(
                                  value: Ear_Protection,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Ear_Protection = value!;
                                    });
                                  }),
                              Container(
                                width: textFieldWidth,
                                child: Text(
                                  'Ear Protection',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Checkbox(

                                    value: Escape_air_pack,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Escape_air_pack = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Escape air pack',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Other_barrier,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Other_barrier = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Other barrier clothing',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Dust_respirator,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Dust_respirator = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Dust respirator',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Evacuation_instruction,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Evacuation_instruction = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Evacuation instructions',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Coverall,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Coverall = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Coveralls',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Two_escape_routes,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Two_escape_routes = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Two escape routes',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Safety_shower,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Safety_shower = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Safety shower',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Life_line_harness,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Life_line_harness = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Life-line harness',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Acid_suit,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Acid_suit = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Acid suit',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Chemically_resistant,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Chemically_resistant = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Chemically resistant lifeline',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Acid_hood,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Acid_hood = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Acid hood',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Life_line_belt,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Life_line_belt = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'life_line belt/wristlets',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Face_sheild,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Face_sheild = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Face shield',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Fire_alaram,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Fire_alaram = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Fire alarm box',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Chemical_goggles,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Chemical_goggles = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Chemical goggles',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Escape_ladder,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Escape_ladder = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Escape ladders',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Rubber_glove,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Rubber_glove = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Rubber glove',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Mechanical_extraction_device,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Mechanical_extraction_device = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Mechanical etraction device',
                                    style: TextStyle(fontSize: 16),
                                  ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width:300,
                          child: Text(
                            'Space Pepration:',
                            style: TextStyle(fontSize: 20,color:Colors.red),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Isolate,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Isolate = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Isolate',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Lock_out,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Lock_out = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Lock out/Tag out',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Disconnect_blank,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Disconnect_blank = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Disconnect and blank',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Post_work_sign,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Post_work_sign = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Post work sign',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Rope_off_area,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Rope_off_area = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Rope off work area',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Erect_barricade,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Erect_barricade = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Erect barricade',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Block_roadways,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Block_roadways = value!;
                                      });
                                    }),
                                Container(
                                  width:textFieldWidth,
                                  child: Text(
                                    'Block roadways',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Protect_against_external,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Protect_against_external = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Protect against external hazards',
                                    style: TextStyle(fontSize: 16),
                                  ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Electrical Precautions:',
                            style: TextStyle(fontSize: 20,color:Colors.red),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Lock_out_circuits,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Lock_out_circuits = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Lock out circuits',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Pull_fuses,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Pull_fuses = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Pull fuses',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Spark_containers_and_sheild,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Spark_containers_and_sheild = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Spark containers and sheild',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Welding_arc_protection,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Welding_arc_protection = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Weldind-arc protection',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Ground_fault_interruption,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Ground_fault_interruption = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Ground fault interruption',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Proper_grounding,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Proper_grounding = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Proper grounding',
                                    style: TextStyle(fontSize: 16),
                                  ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Fire Safety:',
                            style: TextStyle(fontSize: 20,color: Colors.red),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Specify_fire_watch,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Specify_fire_watch = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Specify fire watch in"Remarks"',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: Area_alarm_no,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    Area_alarm_no = value!;
                                                  });
                                                },
                                              ),
                                              Text(
                                                'Area alarm no',
                                                style: TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    if(Area_alarm_no)
                                      Container(
                                        child: TextFormField(
                                          onChanged: (value){
                                            certificateData.area_alarm_no = value;
                                          },
                                          controller: alarm_no,
                                          decoration: InputDecoration(
                                            labelText: 'Enter Text',
                                            border: OutlineInputBorder(),
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
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Fire_hose_laid_out,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Fire_hose_laid_out = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Fire hose laid out "',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Water_hose_running,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Water_hose_running = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Water hose running',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Keep_area_wet,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Keep_area_wet = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Keep area wet',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Cover_sewer_openings,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Cover_sewer_openings = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Cover sewer openings',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: CO2_extinguisher,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        CO2_extinguisher = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'CO2 extinguisher',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: Dry_poweder_extinguisher,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Dry_poweder_extinguisher = value!;
                                      });
                                    }),
                                Container(
                                  width: textFieldWidth,
                                  child: Text(
                                    'Dry poweder extinguisher',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: Fire_safety_other,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                Fire_safety_other = value!;
                                              });
                                            },
                                          ),
                                          Container(
                                              width:textFieldWidth,
                                              child: Text(
                                                'Other',
                                                style:TextStyle(fontSize: 16),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                if(Fire_safety_other)
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      child: TextFormField(
                                        onChanged: (value){
                                          certificateData.fire_safety_other = value;
                                        },
                                        controller: Fire_safety,
                                        decoration: InputDecoration(
                                          labelText: 'Enter Text',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            'Equipment CLeaning and Draining:',
                            style: TextStyle(fontSize: 20,color:Colors.red),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: Steam,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Steam = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Steam',
                                            style:
                                            TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (Steam)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    controller: steam,
                                    onChanged: (value){
                                      certificateData.steam =value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: Fill_and_drain,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Fill_and_drain = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Fill and Drain',
                                            style:
                                            TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (Fill_and_drain)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    onChanged: (value){
                                      certificateData.fill_and_drain =value;
                                    },
                                    controller: fill_and_drain,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: Remove_deposits,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Remove_deposits = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Remove deposits',
                                            style:
                                            TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (Remove_deposits)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    onChanged: (value){
                                      certificateData.remove_deposit= value;
                                    },
                                    controller: remove_deposits,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: equipment,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            equipment = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Other',
                                            style:
                                            TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if(equipment)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    onChanged: (value){
                                      certificateData.other_equipment =value;
                                    },
                                    controller: Other_equipment,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: Neutralize_contents,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            Neutralize_contents = value!;
                                          });
                                        },
                                      ),
                                      Container(
                                          child: Text(
                                            'Neutralize cotents',
                                            style:
                                            TextStyle(fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (Neutralize_contents)
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  child: TextFormField(
                                    onChanged: (value){
                                      certificateData.neturalize_content =value ;
                                    },
                                    controller: neutralize_contents,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Text',
                                      border: OutlineInputBorder(),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(children: [

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Communication:',
                          style: TextStyle(fontSize: 20,color: Colors.red),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 155,
                        child: RadioListTile<bool>(
                          title: Container(child: Text('Telephone')),
                          value: true,
                          groupValue: Telephone,
                          onChanged: (value) {
                            setState(() {
                              Telephone = value!;
                              Radio = !value;
                              Commu_Other = !value;
                              additional = !value;
                              // Update the other value accordingly
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 140,
                        child: RadioListTile<bool>(
                          title: Text('Radio'),
                          value: true,
                          groupValue: Radio,
                          onChanged: (value) {
                            setState(() {
                              Radio = value!;
                              Telephone = !value;
                              Commu_Other = !value;
                              additional = !value;
                              // Update the other value accordingly
                            });
                          },
                        ),
                      )
                    ]),
                    Container(
                      child: RadioListTile(
                        title: Text('Other'),
                        value: true,
                        groupValue: Commu_Other,
                        onChanged: (value) {
                          setState(() {
                            Commu_Other = value!;
                            Telephone = !value;
                            Radio = !value;
                            additional = !value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Container(
                        child: Visibility(
                          visible: Commu_Other,
                          child: TextFormField(
                            maxLines: 4,
                            controller: commun_other,
                            onChanged: (value) {
                              certificateData.commun_other = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: RadioListTile(
                        title: Text(
                            'Location/type of additional assistance(third alternate)'),
                        value: true,
                        groupValue: additional,
                        onChanged: (value) {
                          setState(() {
                            additional = value!;
                            Telephone = !value;
                            Radio = !value;
                            Commu_Other = !value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10 ,10, 10),
                      child: Container(
                        child: Visibility(
                          visible: additional,
                          child: TextFormField(
                            maxLines: 4,
                            controller: Additional_Assistance,
                            onChanged: (value) {
                              certificateData.additional_assistance = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),


              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(children: [

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Any other Observation',
                          style: TextStyle(fontSize: 20,color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        child: TextFormField(
                          maxLines: 4,
                          controller: Other_Observations,
                          onChanged: (value){
                            certificateData.other_obseravations =value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 300,
                      child: Text('Person Caring Out the test',style: TextStyle(fontSize: 20,color: Colors.red),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              width: 50,
                              child: Text('Name:',style: TextStyle(fontSize: 16),),
                            ),
                          ),
                          Container(
                            width:260,
                            child: TextFormField(
                              controller: Person_Carring_Out_the_test,
                              onChanged: (value){
                                certificateData.person_carring_out_the_test =value;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),

                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  elevation: 30,
                  child: Column(children: [

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Items to be checked by Area in charge before confined sapce entry can proceed',
                          style: TextStyle(fontSize: 20,color: Colors.red),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'The above equipment has been isolated from all source of dangerous liquid,gases and fumes by insertion of spade or by removing a section of pipe work and blanking open and end of the circuit',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL1_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL1_Yes = value!;
                                CL1_No = !value;
                                CL1_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL1_No,
                            onChanged: (value) {
                              setState(() {
                                CL1_No = value!;
                                CL1_Yes = !value;
                                CL1_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL1_Na,
                            onChanged: (value) {
                              setState(() {
                                CL1_Na = value!;
                                CL1_No = !value;
                                CL1_Yes = !value;
                              });
                            }),
                      ),
                    ]),


                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Equipment has been isolated from all source of electrical and mechanical power ',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL2_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL2_Yes = value!;
                                CL2_No = !value;
                                CL2_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL2_No,
                            onChanged: (value) {
                              setState(() {
                                CL2_No = value!;
                                CL2_Yes = !value;
                                CL2_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL2_Na,
                            onChanged: (value) {
                              setState(() {
                                CL2_Na = value!;
                                CL2_No = !value;
                                CL2_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Euquipment free of all dangerous materials.All flushing/inert gas puring completes all liquid drained and ventilation atmosphere restore on confined space',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL3_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL3_Yes = value!;
                                CL3_No = !value;
                                CL3_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL3_No,
                            onChanged: (value) {
                              setState(() {

                                CL3_No = value!;
                                CL3_Yes = !value;
                                CL3_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL3_Na,
                            onChanged: (value) {
                              setState(() {
                                CL3_Na = value!;
                                CL3_No = !value;
                                CL3_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Equipment surrounding area Check and safe from hazard arising from other work/operation',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL4_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL4_Yes = value!;
                                CL4_No = !value;
                                CL4_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL4_No,
                            onChanged: (value) {
                              setState(() {

                                CL4_No = value!;
                                CL4_Yes = !value;
                                CL4_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL4_Na,
                            onChanged: (value) {
                              setState(() {
                                CL4_Na = value!;
                                CL4_No = !value;
                                CL4_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Life line,breathing apparatus and resuscitation equipment available',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL5_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL5_Yes = value!;
                                CL5_No = !value;
                                CL5_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL5_No,
                            onChanged: (value) {
                              setState(() {

                                CL5_No = value!;
                                CL5_Yes = !value;
                                CL5_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL5_Na,
                            onChanged: (value) {
                              setState(() {
                                CL5_Na = value!;
                                CL5_No = !value;
                                CL5_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Adequet access and escape routes and provided',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL6_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL6_Yes = value!;
                                CL6_No = !value;
                                CL6_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL6_No,
                            onChanged: (value) {
                              setState(() {

                                CL6_No = value!;
                                CL6_Yes = !value;
                                CL6_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL6_Na,
                            onChanged: (value) {
                              setState(() {
                                CL6_Na = value!;
                                CL6_No = !value;
                                CL6_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Fresh air supply equipment installed and operation.vessel sufficently cooled for access',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL7_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL7_Yes = value!;
                                CL7_No = !value;
                                CL7_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL7_No,
                            onChanged: (value) {
                              setState(() {

                                CL7_No = value!;
                                CL7_Yes = !value;
                                CL7_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL7_Na,
                            onChanged: (value) {
                              setState(() {
                                CL7_Na = value!;
                                CL7_No = !value;
                                CL7_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Procedure and rescue plans formulated and discussed with permit holder,personnel entering vessel and stand by personal vacation exercise conducted where state d as required on permit',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL8_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL8_Yes = value!;
                                CL8_No = !value;
                                CL8_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL8_No,
                            onChanged: (value) {
                              setState(() {

                                CL8_No = value!;
                                CL8_Yes = !value;
                                CL8_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL8_Na,
                            onChanged: (value) {
                              setState(() {
                                CL8_Na = value!;
                                CL8_No = !value;
                                CL8_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Stand by personal appointed',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL9_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL9_Yes = value!;
                                CL9_No = !value;
                                CL9_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL9_No,
                            onChanged: (value) {
                              setState(() {

                                CL9_No = value!;
                                CL9_Yes = !value;
                                CL9_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL9_Na,
                            onChanged: (value) {
                              setState(() {
                                CL9_Na = value!;
                                CL9_No = !value;
                                CL9_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'Fire Extinguiser/Fire Hydrant line available?',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL10_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL10_Yes = value!;
                                CL10_No = !value;
                                CL10_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL10_No,
                            onChanged: (value) {
                              setState(() {

                                CL10_No = value!;
                                CL10_Yes = !value;
                                CL10_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL10_Na,
                            onChanged: (value) {
                              setState(() {
                                CL10_Na = value!;
                                CL10_No = !value;
                                CL10_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10, 0),
                      child: Container(
                        width: 300,
                        child: Text(
                          'All persons engaged for working provided required training?',
                          style: TextStyle(fontSize: 16,),
                        ),
                      ),
                    ),

                    Row(children: [
                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('Yes')),
                            value: true,
                            groupValue: CL11_Yes,
                            onChanged: (value) {
                              setState(() {
                                CL11_Yes = value!;
                                CL11_No = !value;
                                CL11_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Text('No'),
                            value: true,
                            groupValue: CL11_No,
                            onChanged: (value) {
                              setState(() {

                                CL11_No = value!;
                                CL11_Yes = !value;
                                CL11_Na = !value;
                              });
                            }),
                      ),

                      Container(
                        width: 113,
                        child: RadioListTile<bool>(
                            title: Container(child: Text('NA')),
                            value: true,
                            groupValue: CL11_Na,
                            onChanged: (value) {
                              setState(() {
                                CL11_Na = value!;
                                CL11_No = !value;
                                CL11_Yes = !value;
                              });
                            }),
                      ),
                    ]),

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Container(
                              width:textFieldWidth,
                              child:Text('Name of the Area in charge:',style:TextStyle(fontSize: 16) ,)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: Container(
                              width:200,
                              child:TextFormField(
                                onChanged: (value) {
                                  certificateData.area_in_charge_name = value;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                controller: Area_in_charge_Name,
                              )
                          ),
                        ),
                      ],
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

                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width:350,
                          child: Text('4.Gas Testing',style: TextStyle(fontSize: 20,color: Colors.red),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width:300,
                          child: Text('Result of test',style: TextStyle(fontSize: 20,color: Colors.red),),
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('GAS',style: TextStyle(fontSize: 16,color: Colors.red),),
                              ),
                              Container(
                                width:100,
                                child: Text('LIMIT',style: TextStyle(fontSize: 16,color: Colors.red),),
                              ),
                              Container(
                                width:100,
                                child: Text('RESULT',style: TextStyle(fontSize: 16,color: Colors.red),),
                              ),
                            ],
                          ),



                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('Oxygen',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: Text('19-21 % VOL',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R1,
                                  onChanged: (value) {
                                    certificateData.r1 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: '%',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('Hydrocarbon',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: Text('0% LEL for Hot Work',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R2,
                                  onChanged: (value) {
                                    certificateData.r2 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: '%',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('CO',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: Text('50 PPM(0.005%)',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R3,
                                  onChanged: (value) {
                                    certificateData.r3 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'PPM',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('NH3',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: Text('<15 PPM',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R4,
                                  onChanged: (value) {
                                    certificateData.r4 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'PPM',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('TEMPERATURE',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: ER1,
                                  onChanged: (value) {
                                    certificateData.er1 = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Enter the Limit',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R5,
                                  onChanged: (value) {
                                    certificateData.r5 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: '°C',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('DUST',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: Text('10 mg/Cu.M',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R6,
                                  onChanged: (value) {
                                    certificateData.r6 = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'PPM',
                                    border: OutlineInputBorder(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:100,
                                child: Text('Any other Fumes',style: TextStyle(fontSize: 16),),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: ER2,
                                  onChanged: (value) {
                                    certificateData.er2 = value;
                                  },

                                  decoration: InputDecoration(
                                    hintText: 'Enter the Limit',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Container(
                                width:100,
                                child: TextFormField(
                                  controller: R7,
                                  onChanged: (value) {
                                    certificateData.r7 = value;
                                  },

                                  decoration: InputDecoration(
                                    hintText: 'Enter the Result',
                                    border: OutlineInputBorder(),
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
                  elevation:30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding:EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          child: Text('Test Have Been Carried Out in the Above Mentioned Confined Space and Entry is Permitted as Indicated below',style: TextStyle(fontSize: 20,color: Colors.red)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Container(
                              width:150,
                              child: Text('Recommendation for Perodic Checking',style: TextStyle(fontSize: 16),),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Container(
                              width: 170,
                              child: TextFormField(

                                onChanged: (value) {
                                  certificateData.perodic_checking = value;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: ('Min/Hrs')
                                ),
                                controller: Perodic_Checking,
                              ),
                            ),
                          )
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:Text('Entry into the confined Space is permitted With/Without Breathing Apparatus',style: TextStyle(fontSize: 16),),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Time:',
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

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:Text('Entry wearing Breathing Apparatus subject to the following conditions',style: TextStyle(fontSize: 20,color: Colors.red),),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:Text('ⅰ An observer must be positioned outside the confined space',style: TextStyle(fontSize: 16,color: Colors.red),),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:Text('ⅱ Where practicable,each man is wearing belt or harness with life line attached and that the observer positioned outside is holding the free end of the life line and is capable of pulling out the men',style: TextStyle(fontSize: 16,color: Colors.red),),
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
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Container(
                          width:300,
                          child:Text('I uderstand all the the above sfety precaution.I will ensure that work place when all these safety precautions are complied with',style: TextStyle(fontSize: 16),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('6.PERMIT APPLICANT',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name:',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Applicant1,
                                  onChanged: (value){
                                    certificateData.applicant1=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: Per_appln_date,
                                  onChanged: (value) {
                                    certificateData.per_appln_date = value;
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
                                        Per_appln_date.text = formattedDate;
                                        certificateData.per_appln_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: Per_appln_Time,
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
                                        Per_appln_Time.text = formattedTime;
                                        certificateData.per_appln_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('7.PERMIT Holder',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Permit_Holder1,
                                  onChanged: (value){
                                    certificateData.holder1=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: Per_holder_date,
                                  onChanged: (value) {
                                    certificateData.per_holder_date = value;
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
                                        Per_holder_date.text = formattedDate;
                                        certificateData.per_holder_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: Per_holder_Time,
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
                                        Per_holder_Time.text = formattedTime;
                                        certificateData.per_holder_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),


              Padding(
                padding:EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(

                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width:300,
                          child:Text('I certify that the above result indicate that the confined space covered by this certificate is safe to enter',style: TextStyle(fontSize: 20,color:Colors.red),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('PERMIT Aurthorizer',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name:',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Aurthoriser1,
                                  onChanged: (value){
                                    certificateData.aurthoriser1=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: Per_auth_date,
                                  onChanged: (value) {
                                    certificateData.per_auth_date = value;
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
                                        Per_auth_date.text = formattedDate;
                                        certificateData.per_auth_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: Per_auth_Time,
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
                                        Per_auth_Time.text = formattedTime;
                                        certificateData.per_auth_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  elevation:30,
                  borderRadius:BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child:Text('RETURN OF PERMIT TO WORK',style:TextStyle(fontSize: 20,color:Colors.red)),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Text('The work planned inside the confined space is completed/incomplete/not taken up/cancelled.The confined space and the equipment there in are left in safe condition.',style:TextStyle(fontSize: 16)),
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
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('PERMIT APPLICANT',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name:',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Applicant2,
                                  onChanged: (value){
                                    certificateData.applicant2=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: RET_appln_date,
                                  onChanged: (value) {
                                    certificateData.ret_appln_date = value;
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
                                        RET_appln_date.text = formattedDate;
                                        certificateData.ret_appln_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: RET_appln_Time,
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
                                        RET_appln_Time.text = formattedTime;
                                        certificateData.ret_appln_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('PERMIT Holder',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name:',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Permit_Holder2,
                                  onChanged: (value){
                                    certificateData.holder2=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: RET_holder_date,
                                  onChanged: (value) {
                                    certificateData.ret_holder_date = value;
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
                                        RET_holder_date.text = formattedDate;
                                        certificateData.ret_holder_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: RET_holder_Time,
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
                                        RET_holder_Time.text = formattedTime;
                                        certificateData.ret_holder_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.all(10.0),
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.all(Radius.circular(15.0,)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 300,
                          child: Text('PERMIT Aurthorizer',style:TextStyle(fontSize: 16,color:Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Name:',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Container(
                                width:190,
                                child:TextFormField(
                                  controller: Aurthoriser2,
                                  onChanged: (value){
                                    certificateData.aurthoriser2=value;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width:textFieldWidth,
                                child:Text('Date',style: TextStyle(fontSize: 16),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextFormField(
                                  controller: RET_auth_date,
                                  onChanged: (value) {
                                    certificateData.ret_holder_date = value;
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
                                        RET_auth_date.text = formattedDate;
                                        certificateData.ret_auth_date = formattedDate;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: textFieldWidth,
                              child:Text("Time",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 180,
                                height: 50,
                                child: TextField(
                                  controller: RET_holder_Time,
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
                                        RET_holder_Time.text = formattedTime;
                                        certificateData.ret_holder_time = formattedTime;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

            ]
        ),

      ]
      ),
    );


  }
}

