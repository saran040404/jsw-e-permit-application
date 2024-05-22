import 'package:flutter/material.dart';
import 'package:jsw_epermit/Applicant_Pages/Certificate_History/certificate_history.dart';
import 'package:jsw_epermit/Applicant_Pages/permit_to_work.dart';
import 'package:jsw_epermit/Applicant_Pages/Permit_History/permit_history.dart';

import '../Authorizer_Pages/Apply Certificate.dart';
import 'permit_status.dart';
import 'DIC_Location/DIC_Location.dart';

class ApplicantHome extends StatefulWidget {
  @override
  ApplicantHomePage createState() => ApplicantHomePage();
}

class ApplicantHomePage extends State<ApplicantHome> {
  void _applyNewPermitToWork(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewWork()),
    );
  }

  void _applyNewCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthApplyCertificate()),
    );
  }

  void _viewPermitStatus(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PermitStatus()),
    );
  }

  void _viewCertificateHistory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CertificateHistory()),
    );
  }

  void _viewCompletedWork() {
    print('View Completed Work');
  }

  void _viewRejectedWork() {
    print('View Rejected Work');
  }

  void _DICPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DICLocation()), 
    );
  }

  void _permitHistory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PermitHistory()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Applicant Home'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButtonWithIcon(
                onPressed: () => _applyNewPermitToWork(context),
                iconPath: 'images/plus.png',
                text: 'Apply Work Permit',
              ),
              ElevatedButtonWithIcon(
                onPressed: () => _applyNewCertificate(context),
                iconPath: 'images/plus.png',
                text: 'Apply Certificate',
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total 5 Allowed per applicant',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Applied       : 3',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Remaining  : 2',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  List<DashboardItem> dashboardItems = [
                    DashboardItem("Permit Status", Icons.check_box),
                    DashboardItem("Permit History", Icons.calendar_today),
                    DashboardItem("Certificate History", Icons.description),
                    DashboardItem("DIC Location", Icons.location_on),
                    DashboardItem("To Be Determined", Icons.checklist),
                    DashboardItem("To Be Determined", Icons.calendar_view_day),
                  ];

                  return GestureDetector(
                    onTap: () {
                      if (index < dashboardItems.length) {
                        // Handle button tap
                        if (dashboardItems[index].title == "DIC Location") {
                          _DICPage(context);
                        }else if (dashboardItems[index].title == "Permit Status") {
                          _viewPermitStatus(context);
                        }else if (dashboardItems[index].title == "Permit History") {
                          _permitHistory(context);
                        }else if (dashboardItems[index].title == "Certificate History") {
                          _viewCertificateHistory(context);
                        }
                        // Navigate to DICLocation

                        else {
                          print('${dashboardItems[index].title} tapped');
                        }
                      }
                    },
                    child: DashboardButton(
                      dashboardItem: dashboardItems[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardItem {
  final String title;
  final IconData icon;

  DashboardItem(this.title, this.icon);
}

class DashboardButton extends StatelessWidget {
  final DashboardItem dashboardItem;

  const DashboardButton({required this.dashboardItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            dashboardItem.icon,
            size: 36,
            color: Colors.blue,
          ),
          SizedBox(height: 10),
          Text(
            dashboardItem.title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
/*
class ElevatedButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final String buttonText;

  const ElevatedButtonWithIcon({
    required this.onPressed,
    required this.iconPath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Image.asset(
                iconPath,
                width: 30.0,
                height: 30.0,
              ),
            ),
            SizedBox(width: 15),
            Text(
              buttonText,
              style: TextStyle(
                color: Colors.black, // Set the text color
                fontWeight: FontWeight.bold,
                fontSize: 16.0,// Set the font weight to bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */

class ElevatedButtonWithIcon extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? iconPath;

  const ElevatedButtonWithIcon({required this.text, required this.onPressed, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(340, 70)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left) of the button
          children: [
            if (iconPath != null)
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Image.asset(
                  iconPath!,
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            SizedBox(width: 30),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


