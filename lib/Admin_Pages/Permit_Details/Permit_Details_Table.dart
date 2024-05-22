import 'package:flutter/material.dart';
import 'package:jsw_epermit/Applicant_Pages/permit_to_work.dart';


class PermitDetailsTable extends StatefulWidget {
  @override
  _PermitDetailsTableState createState() =>
      _PermitDetailsTableState();
}

class _PermitDetailsTableState extends State<PermitDetailsTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 30,
          columns: <DataColumn>[
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
              label: Text('Authorizer'),
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
              DataCell(Text('10/10/23')),
              DataCell(Text('Permit001')),
              DataCell(Text('Ravi')),
              DataCell(Text('Krishna')),
              DataCell(Text('Pending')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _LockouttagOut(context),
                      child: Text('View'),
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
              DataCell(Text('11/10/23')),
              DataCell(Text('Permit005')),
              DataCell(Text('Bigil')),
              DataCell(Text('Leo')),
              DataCell(Text('Completed')),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () => _ElectricalCertificate(context),
                      child: Text('View'),
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
      MaterialPageRoute(builder: (context) => NewWork()),
    );
    // Functionality for 'Lock out tag out Certificate' button
  }

  void _ElectricalCertificate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewWork()),
    );
    // Functionality for 'Electrical Certificate' button
  }
}
