import 'package:flutter/material.dart';

class CompetencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showSkillsDialog(context, isHardSkills: true);
              },
              child: Text('Hard Skills'),
            style: ElevatedButton.styleFrom(
            primary: Colors.brown[100], // Change the button color here
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            textStyle: TextStyle(fontSize: 18.0),
            ),),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showSkillsDialog(context, isHardSkills: false);
              },
              child: Text('Soft Skills'),
              style: ElevatedButton.styleFrom(
                primary: Colors.brown[200], // Change the button color here
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                textStyle: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSkillsDialog(BuildContext context, {required bool isHardSkills}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isHardSkills ? 'Hard Skills' : 'Soft Skills',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  isHardSkills ? buildHardSkillsSection() : buildSoftSkillsSection(),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildHardSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSkillItem('Node.js', Icons.code),
        buildSkillItem('Python', Icons.code),
        buildSkillItem('Angular', Icons.code),
        buildSkillItem('UML', Icons.code),
        buildSkillItem('HTML5', Icons.code),
        buildSkillItem('CSS3', Icons.code),
        buildSkillItem('JavaScript', Icons.code),
        buildSkillItem('SQL', Icons.code),
        buildSkillItem('Bootstrap', Icons.code),
        buildSkillItem('Mobile development', Icons.mobile_friendly),
        buildSkillItem('ReactJS', Icons.code),
      ],
    );
  }

  Widget buildSoftSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSkillItemWithIcon('Communication', Icons.chat_bubble, Colors.blue),
        buildSkillItemWithIcon('Team Work', Icons.people, Colors.green),
        buildSkillItemWithIcon('Sales', Icons.attach_money, Colors.orange),
        buildSkillItemWithIcon('Google Sheet', Icons.table_chart, Colors.blue),
        buildSkillItemWithIcon('Management', Icons.settings, Colors.red),
        buildSkillItemWithIcon('Public Speaking', Icons.mic, Colors.purple),
        buildSkillItemWithIcon('Team Management', Icons.group, Colors.green),
        buildSkillItemWithIcon('Performance Management', Icons.bar_chart, Colors.red),
        buildSkillItemWithIcon('Negotiation', Icons.how_to_reg, Colors.orange),
        buildSkillItemWithIcon('Google Slides', Icons.slideshow, Colors.blue),
        buildSkillItemWithIcon('Google Docs', Icons.description, Colors.blue),
      ],
    );
  }

  Widget buildSkillItem(String skill, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(skill),
    );
  }

  Widget buildSkillItemWithIcon(String skill, IconData icon, Color iconColor) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(skill),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: CompetencesPage(),
    ),
  );
}
