import 'package:flutter/material.dart';

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

class AuthApplyCertificate extends StatefulWidget {
  @override
  _AuthApplyCertificateState createState() => _AuthApplyCertificateState();
}

class _AuthApplyCertificateState extends State<AuthApplyCertificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Certificates"),
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
                                  onPressed: () =>
                                      _HeavyLiftCertificate(context),
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
                      SizedBox(height: 20.0),
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
