import 'package:flutter/material.dart';

import 'Authorize Request.dart';

class PendingApprovalTable extends StatefulWidget {
  @override
  _PendingApprovalTableState createState() => _PendingApprovalTableState();
}

class _PendingApprovalTableState extends State<PendingApprovalTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Approval Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 30,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Sno'),
            ),
            DataColumn(
              label: Text('Date'),
            ),
            DataColumn(
              label: Text('Permit No'),
            ),
            DataColumn(
              label: Text('Applicant'),
            ),
            DataColumn(
              label: Text('Work Status'),
            ),
            DataColumn(
              label: Text('Operations'),
            ),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('10/10/23')),
              DataCell(Text('Permit001')),
              DataCell(Text('Ravi')),
              DataCell(Text('Approved')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _LockouttagOut(context),
                      child: Text('Approve'),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _ElectricalCertificate(context),
                      child: Text('Delete'),
                    ),
                  ],
                ),
              )
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('2')),
              DataCell(Text('11/10/23')),
              DataCell(Text('Permit005')),
              DataCell(Text('Bigil')),
              DataCell(Text('Completed')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _ElectricalCertificate(context),
                      child: Text('Approve'),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _ElectricalCertificate(context),
                      child: Text('Delete'),
                    ),
                  ],
                ),
              )
            ]),
            // Add more rows as needed
          ],
        ),
      ),
    );
  }

  void _LockouttagOut(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthorizeRequest()),
    );
    // Functionality for 'Lock out tag out Certificate' button
  }

  void _ElectricalCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthorizeRequest()),
    );
    // Functionality for 'Electrical Certificate' button
  }
}
