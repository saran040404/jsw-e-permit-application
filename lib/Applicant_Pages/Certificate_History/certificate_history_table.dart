import 'package:flutter/material.dart';

import '../../Certificates/electrical_certificate.dart';
import '../../Certificates/lockout_certificate.dart';

class CertificateHistoryTable extends StatefulWidget {
  @override
  _CertificateHistoryTableState createState() =>
      _CertificateHistoryTableState();
}

class _CertificateHistoryTableState extends State<CertificateHistoryTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificate History'),
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
              label: Text('Certificate Name'),
            ),
            DataColumn(
              label: Text('Certificate Date'),
            ),
            DataColumn(
              label: Text('Operations'),
            ),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('Permit001')),
              DataCell(Text('Loto')),
              DataCell(Text('18/09/2023')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _LockouttagOut(context),
                      child: Text('View'),
                    ),
                  ],
                ),
              )
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('2')),
              DataCell(Text('Permit005')),
              DataCell(Text('Electrical')),
              DataCell(Text('01/05/2023')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _ElectricalCertificate(context),
                      child: Text('View'),
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
