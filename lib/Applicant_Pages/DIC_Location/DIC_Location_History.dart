import 'package:flutter/material.dart';

import '../../Certificates/electrical_certificate.dart';
import '../../Certificates/lockout_certificate.dart';

class DICLoactionHistoryTable extends StatefulWidget {
  @override
  _DICLoactionHistoryTableState createState() =>
      _DICLoactionHistoryTableState();
}

class _DICLoactionHistoryTableState extends State<DICLoactionHistoryTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIC Location History'),
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
              label: Text('Permit No'),
            ),
            DataColumn(
              label: Text('Authorizer Name'),
            ),
            DataColumn(
              label: Text('Applicant Name'),
            ),
            DataColumn(
              label: Text('Status'),
            ),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('John Durairaj')),
              DataCell(Text('Bhavani')),
              DataCell(Text('18/09/2023')),
              DataCell(Text('Completed'))
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('2')),
              DataCell(Text('Rayyapan')),
              DataCell(Text('Bigil')),
              DataCell(Text('01/05/2023')),
              DataCell(Text('Revalidated'))
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
}
