import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsw_epermit/Admin_Pages/Admin%20Dashboard.dart';
import 'package:jsw_epermit/Applicant_Pages/applicant_home.dart';
import 'package:jsw_epermit/Authorizer_Pages/authoriser_home.dart';

// Define constants for user types
const String userTypeAdmin = 'admin';
const String userTypeApplicant = 'applicant';
const String userTypeAuthorizer = 'authorizer';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Admin'),
              Tab(text: 'Applicant'),
              Tab(text: 'Authorizer'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabContent(userType: userTypeAdmin),
            TabContent(userType: userTypeApplicant),
            TabContent(userType: userTypeAuthorizer),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String userType;

  TabContent({required this.userType});

  Future<void> sendData(BuildContext context, String email, String password) async {
    final Map<String, dynamic> data = {
      'user_name': email,
      'pass_word': password,

      'aplnt_emp_id': email,
      'aplnt_password': password,

      'auth_emp_id': email,
      'auth_password': password,


    };

    String apiUrl;

    switch (userType) {
      case userTypeAdmin:
        apiUrl = 'http://192.168.85.149:8000/admin';
        break;
      case userTypeApplicant:
        apiUrl = 'http://192.168.85.149:8000/login'; // Replace with the appropriate endpoint for applicants
        break;
      case userTypeAuthorizer:
        apiUrl = 'http://192.168.85.149:8000/auth'; // Replace with the appropriate endpoint for authorizers
        break;
      default:
        print('Invalid user type');
        return;
    }

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print('Response data: ${responseData['message']}');

        if (responseData['success'] == true) {
          print('Logged in');
          switch (userType) {
            case userTypeAdmin:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminHome()),
              );
              break;
            case userTypeApplicant:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApplicantHome()),
              );
              break;
            case userTypeAuthorizer:
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => AuthoriserHome()),
              );
              break;
            default:
              print('Invalid user type');
              break;
          }
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "JSW User Login",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // ... rest of the UI remains the same

        Text(
          "Sign in Continue",
          style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
        ),
        Center(
          child: Image.asset(
            "images/avatar.png",
            width: 150,
            height: 150,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: 400,
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Employee_ID',
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: 400,
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Forget Password",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I am new Users ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            sendData(context,
              emailController.text,
              passwordController.text,
            );
          },
          child: Text('Login'),
        ),
      ],
    );
  }
}

