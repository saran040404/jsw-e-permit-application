import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'Remove_User_Data.dart';

class AuthRemoveUser extends StatefulWidget {
  @override
  AuthRemoveUserState createState() => AuthRemoveUserState();
}

class AuthRemoveUserState extends State<AuthRemoveUser> {
  String? _selectedDIC;
  bool _isCustomDIC = false;
  final TextEditingController _customDICController = TextEditingController();

  // Your list of items for the searchable dropdown
  final List<String> items = [
    "102586",
    "568293",
    "452186",
    "963542",
    "687654",
    "357684",
    "Custom DIC",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400, // Set the desired width
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
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _isCustomDIC
                      ? Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _customDICController,
                          onChanged: (String value) {
                            setState(() {
                              _selectedDIC = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter custom DIC',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _isCustomDIC = false;
                            _selectedDIC = null;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  )
                      : SizedBox(
                    height: 40,
                    child: TypeAheadField<String>(
                      suggestionsCallback: (pattern) {
                        return items
                            .where((item) =>
                            item.toLowerCase().contains(pattern.toLowerCase()))
                            .toList();
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(suggestion),
                        );
                      },
                      onSuggestionSelected: (String? value) {
                        setState(() {
                          _isCustomDIC = false;
                          _selectedDIC = value;
                          // Navigate to the corresponding page based on the selected value.
                          _navigateToPage(value);
                        });
                      },
                      noItemsFoundBuilder: (context) {
                        return Text("No items found");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPage(String? value) {
    // Replace these routes with the actual routes/pages you want to navigate to.
    if (value == "102586") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "568293") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "452186") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "963542") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "687654") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "357684") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    } else if (value == "Custom DIC") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveUserDataAuth()));
    }
  }
}
