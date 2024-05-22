import 'package:flutter/material.dart';
import 'package:jsw_epermit/Admin_Pages/Applicant_Operations/Add_User.dart';
import 'package:jsw_epermit/Admin_Pages/Applicant_Operations/Remove_User/Remove_User.dart';
import 'package:jsw_epermit/Admin_Pages/Applicant_Operations/View_User/View_User.dart';

import 'Modify_User/Modify_User.dart';

class ApplicantOperations extends StatefulWidget {
  @override
  _ApplicantOperationsState createState() => _ApplicantOperationsState();
}

class _ApplicantOperationsState extends State<ApplicantOperations> {
  void _viewAddUser(BuildContext context) {
    // View in-progress work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddUser()),
    );
  }

  void _viewViewUser(BuildContext context) {
    // View completed work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewUser()),
    );
  }

  void _viewRemoveUser(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RemoveUser()),
    );
  }

  void _viewModifyUser(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ModifyUser()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Applicant Operations'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Add New User',
                  onPressed: () => _viewAddUser(context),
                ),
                CustomButton(
                  text: 'View Users',
                  onPressed: () => _viewViewUser(context),
                ),
                CustomButton(
                  text: 'Remove Users',
                  onPressed: () => _viewRemoveUser(context),
                ),
                CustomButton(
                  text: 'Modify User data',
                  onPressed: () => _viewModifyUser(context),
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
