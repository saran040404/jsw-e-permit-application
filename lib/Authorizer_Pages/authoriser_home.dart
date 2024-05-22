import 'package:flutter/material.dart';
import 'package:jsw_epermit/Applicant_Pages/Certificate_History/certificate_history.dart';
import 'package:jsw_epermit/Applicant_Pages/Permit_History/permit_history.dart';
import 'package:jsw_epermit/Authorizer_Pages/Pending_Approval/Pending%20Approval%20Table.dart';

import '../Applicant_Pages/DIC_Location/DIC_Location.dart';
import '../Applicant_Pages/permit_status.dart';
import 'Apply Certificate.dart';
import 'Auth Permit To Work.dart';
import 'Authorized_Permits/Authorized Permits.dart';


class AuthoriserHome extends StatefulWidget {
  @override
  AuthoriserHomePage createState() => AuthoriserHomePage();
}

class AuthoriserHomePage extends State<AuthoriserHome> {
  void _applyNewPermitToWork(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthNewWork()),
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

  void _viewPendingApprovals(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PendingApprovalTable()),
    );
  }

  void _viewAuthorizedPermits(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthorizedPermits()),
    );
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
        title: Text('Authorizer Home'),
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
                    DashboardItem("Authorized Permits", Icons.calendar_view_day),
                    DashboardItem("Pending Approvals", Icons.checklist),
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
                        }else if (dashboardItems[index].title == "Pending Approvals") {
                          _viewPendingApprovals(context);
                        }else if (dashboardItems[index].title == "Authorized Permits") {
                          _viewAuthorizedPermits(context);
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

