import 'package:flutter/material.dart';
import 'package:jsw_epermit/Admin_Pages/Analytics.dart';
import 'package:jsw_epermit/Admin_Pages/Applicant_Operations/Applicant%20Operations.dart';
import 'package:jsw_epermit/Admin_Pages/Authorizer_Operations/Authorizer%20Operations.dart';
import 'package:jsw_epermit/Admin_Pages/Permit_Details/Permit%20Details.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  void _viewApplicantOperations(BuildContext context) {
    // View in-progress work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ApplicantOperations()),
    );
  }

  void _viewAuthorizerOperations(BuildContext context) {
    // View completed work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthorizerOperations()),
    );
  }

  void _viewPermitDetails(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PermitDetails()),
    );
  }

  void _viewAnalytics(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnalyticsPage()),
    );
  }
/*


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: 'Applicant Operations',
                onPressed: () => _viewApplicantOperations(context),
              ),
              CustomButton(
                text: 'Authorizer Operations',
                onPressed: () => _viewAuthorizerOperations(context),
              ),
              CustomButton(
                text: 'Permit Details',
                onPressed: () => _viewPermitDetails(context),
              ),
              CustomButton(
                text: 'Analytics',
                onPressed: () => _viewAnalytics(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Applicant Operations',
                  onPressed: () => _viewApplicantOperations(context),
                ),
                CustomButton(
                  text: 'Authorizer Operations',
                  onPressed: () => _viewAuthorizerOperations(context),
                ),
                CustomButton(
                  text: 'Permit Details',
                  onPressed: () => _viewPermitDetails(context),
                ),
                CustomButton(
                  text: 'Analytics',
                  onPressed: () => _viewAnalytics(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
          minimumSize: MaterialStateProperty.all(Size(340, 70)),
          // Set the button size here
          backgroundColor: MaterialStateProperty.all(Colors.blue),
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
