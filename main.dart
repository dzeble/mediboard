import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mediboard',
      home: ScrollablePage(),
    );
  }
}

class ScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Row
            Container(
              padding:EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top  + 8, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello Shmuel'),
                  Icon(Icons.notifications_none, color: Colors.blueGrey),
                ],
              ),
            ),

            // Second Row
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconWithText("Visits", Colors.cyan, Icons.scale_rounded),
                  _buildIconWithText("Medication", Colors.blue, Icons.medication),
                  _buildIconWithText("Vaccinations", Colors.yellow, Icons.vaccines_rounded),
                ],
              ),
            ),

            // Third Row - Pie Chart
            Container(
              height: 200,
              padding: EdgeInsets.all(16),
              child: Text(
                    'PieChart'
              ),
            ),

            // Fourth Row - Dropdown Tabs
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildDropdownTab("Future Visits", Colors.cyan, Icons.scale_rounded),
                  _buildDropdownTab("Future Vaccinations", Colors.yellow, Icons.vaccines_rounded),
                  _buildDropdownTab("Future Lab Test", Colors.pink, Icons.science),
                  _buildDropdownTab("Surgeries", Colors.purple, Icons.local_hospital),
                ],
              ),
            ),

            // Fifth Row
            Text("Active Medications"),

            // Sixth Row
            Text("Tracking Measures"),
          ],
        ),
      ),
    );
  }

  // method to build icon with text
  Widget _buildIconWithText(String text, Color color, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: color, size: 40),
        SizedBox(height: 8),
        Text(text),
      ],
    );
  }

  // method to build dropdown tabs
  Widget _buildDropdownTab(String text, Color color, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text),
    );
  }


}
