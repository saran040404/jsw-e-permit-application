import 'package:flutter/material.dart';
import 'package:jsw_epermit/Applicant_Pages/Work%20Complete.dart';

import 'permit_to_work.dart';
import 'revalidation_r1.dart';

class PermitStatus extends StatefulWidget {
  @override
  _PermitStatusState createState() => _PermitStatusState();
}

class _PermitStatusState extends State<PermitStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permit Status'),
      ),
      body: Column(
        children: [
          DataTable(
            columnSpacing: 30, // Adjust the spacing between columns
            columns: <DataColumn>[
              DataColumn(
                label: Text('Sno'),
              ),
              DataColumn(
                label: Text('Permit No'),
              ),
              DataColumn(
                label: Text('Authorizer'),
              ),
              DataColumn(
                label: Text('Status'),
              ),
            ],
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text('1')),
                DataCell(Text('Permit001')),
                DataCell(Text('John Doe')),
                DataCell(Text('Approved')),
              ]),
              // Add more rows as needed
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Align to the right
            children: [
              Text(
                'Operations',
                style: TextStyle(fontSize: 16.0),
              ),
              // Add spacing between text and other content// Add your date widget here
            ],
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.white, // Set the background color
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _editWork(context),
                    // Edit operation
                    child: Text('Edit'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                      onPressed: () => _ViewCompleteWork(context),

                    child: Text('Complete'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      // Delete operation
                    },
                    child: Text('Delete'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _viewRenewal1(context),
                    child: Text('Revalidate'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _ViewWork(context),
                    child: Text('View'),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Add spacing between tables
          // Second row with data only (no DataColumn)
          Container(
            height: 50.0, // Set the desired height
            color: Colors.lightBlue.shade100, // Set the background color
            child: Align(
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30), // Adjust the width as needed
                      Text('2'),
                      SizedBox(width: 40), // Adjust the width as needed
                      Text('Permit002'),
                      SizedBox(width: 30), // Adjust the width as needed
                      Text('Jane Smith'),
                      SizedBox(width: 30), // Adjust the width as needed
                      Text('Pending'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Align to the right
            children: [
              Text(
                'Operations',
                style: TextStyle(fontSize: 16.0),
              ),
              // Add spacing between text and other content// Add your date widget here
            ],
          ),
          SizedBox(height: 10.0),
          // Operations for the second row (scrollable)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.white, // Set the background color
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _editWork(context),
                    child: Text('Edit'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _ViewCompleteWork(context),

                    child: Text('Complete'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      // Delete operation
                    },
                    child: Text('Delete'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _viewRenewal1(context),
                    child: Text('Revalidate'),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => _ViewWork(context),
                    child: Text('View'),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _editWork(BuildContext context) {
    // View new work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewWork()),
    );
  }

  void _ViewWork(BuildContext context) {
    // View new work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewWork()),
    );
  }

  void _ViewCompleteWork(BuildContext context) {
    // View new work functionality here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WorkComplete()),
    );
  }

  void _viewRenewal1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Renewal1()),
    );
    // Functionality for 'Certificate for closure of roads' button
  }
}
