import 'package:flutter/material.dart';
import 'package:jsw_epermit/Admin_Pages/Authorizer_Operations/Add_User.dart';
import 'package:jsw_epermit/Admin_Pages/Authorizer_Operations/Remove_User/Remove User.dart';
import 'package:jsw_epermit/Admin_Pages/Authorizer_Operations/View_User/View_User.dart';

import 'Modify_User/Modify_User.dart';


class AuthorizerOperations extends StatefulWidget {
  @override
  AuthorizerOperationsState createState() => AuthorizerOperationsState();
}

class AuthorizerOperationsState extends State<AuthorizerOperations> {
  void _viewAddUser(BuildContext context) {
    // View in-progress work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddUserAuth()),
    );
  }

  void _viewViewUser(BuildContext context) {
    // View completed work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewUserAuth()),
    );
  }

  void _viewRemoveUser(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthRemoveUser()),
    );
  }

  void _viewModifyUser(BuildContext context) {
    // View rejected work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ModifyUserAuth()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authorizer Operations'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
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
