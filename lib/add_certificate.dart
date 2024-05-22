import 'package:flutter/material.dart';
import 'package:jsw_epermit/Certificates/closureofroads_certificate.dart';
import 'package:jsw_epermit/Certificates/excavation_certificate.dart';
import 'package:jsw_epermit/Certificates/radiography_certificate.dart';

class AddCertificates extends StatefulWidget {
  @override
  _AddCertificatesState createState() => _AddCertificatesState();
}

class _AddCertificatesState extends State<AddCertificates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Certificates'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: 'Excavation Certificate',
                onPressed: () => _ExcavationCertificate(context),
              ),
              CustomButton(
                text: 'Radiography Certificate',
                onPressed: () => _RadiographyCertificate(context),
              ),
              CustomButton(
                text: 'Certificate for closure of roads',
                onPressed: () => _ClosureofRoads(context),
              ),
              CustomButton(
                text: 'Lock out tag out Certificate',
                onPressed: _LockouttagOut,
              ),
              CustomButton(
                text: 'Electrical Certificate',
                onPressed: _ElectricalCertificate,
              ),
              CustomButton(
                text: 'Pick and carry crane Certificate',
                onPressed: _PickAndCarryCraneCertificate,
              ),
              CustomButton(
                text: 'Heavy lift Certificate',
                onPressed: _HeavyLiftCertificate,
              ),
              CustomButton(
                text: 'Working at height Certificate',
                onPressed: _WorkingAtHeightCertificate,
              ),
              CustomButton(
                text: 'Scaffolding Certificate',
                onPressed: _ScaffoldingCertificate,
              ),
              CustomButton(
                text: 'Confined space entry Certificate',
                onPressed: _ConfinedSpaceEntryCertificate,
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

  void _LockouttagOut() {
    // Functionality for 'Lock out tag out Certificate' button
  }

  void _ElectricalCertificate() {
    // Functionality for 'Electrical Certificate' button
  }

  void _PickAndCarryCraneCertificate() {
    // Functionality for 'Pick and carry crane Certificate' button
  }

  void _HeavyLiftCertificate() {
    // Functionality for 'Heavy lift Certificate' button
  }

  void _WorkingAtHeightCertificate() {
    // Functionality for 'Working at height Certificate' button
  }

  void _ScaffoldingCertificate() {
    // Functionality for 'Scaffolding Certificate' button
  }

  void _ConfinedSpaceEntryCertificate() {
    // Functionality for 'Confined space entry Certificate' button
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(300, 50)), // Set the button size here
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
