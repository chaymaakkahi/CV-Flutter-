import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          children: [
            buildExperienceBox(
              'Content and Data entry with Pixtarprinting',
              [
                'September 2023',
                'Working on the content and the data of the articles in order to explore new markets',
                'Skills: WordPress - Chatgypt - deepl - Google sheet - Microsoft teams',
              ],
            ),
            buildExperienceBox(
              'Intern with LIFESERVS company',
              ['March 2023 - Jun  2023',
                  'Design and development of a website for a medical company to improve customer services and improve the management process through a clear dashboard and statistic.',
              'Skills  : Microsoft Visual Studio Code · HTML · Bootstrap · Oracle 11g · Balsamiq · JIRA · CSS avancée · AngularJS · Langage de modélisation unifié (UML)'],
            ),
            buildExperienceBox(
              'Sales Agent with Foodomarket',
              ['November 2022 - March 2023',
              'Negotiating with leads and using persuasion techniques to overcome objections and closing deals \n CRM ( customer relation management ) \n Reaching out to potential leads through a variety of channels such as : E-mail , Phone , Text , Hubspot \n Participating in company meetings with sales managers , and international  providers ',
              'Skills : Negotiation , CRM , HubSpot , management'],
            ),
            buildExperienceBox(
              'Sales representative with Edutest',
              ['July 2022 - Septembre 2022',
              'Respresente Edutest in events, \n Convince leads to choose edutest and help them to find the best scholarship for thier profil,\n Participating in company meetings with sales managers , and international providers ',
              'Skills : Negotiation , CRM , HubSpot , management'],
            ),
            buildExperienceBox(
              'AIESEC',
              ['November 2020 - January 2023',
              'Local conference manager TFC2k22 \n National coordinator in AIESEC Tunisia \n Entity support team : Sales manager in AIESEC in Tunisia\n Projects and Research Team Leader with AIESEC in Costa Rica\n Event manager\n Local Committee Vice President of Business development and engaging with AIESEC\n Organizing Committee member of Recruitment\n Sales manager\n Outgoing global volunteer member',
                  'Skills : Communication , Team work ,Sales ,Google sheet, Management, Public Speaking, Team management ,Performance management, Negotiation, Google Slides, Google Docs'
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExperienceBox(String title, List<String> details) {
    return GestureDetector(
      onTap: () {
        // Navigate to a new screen or show more details here
        showDetailsDialog(context, title, details);
      },
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDetailsDialog(BuildContext context, String title, List<String> details) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          content: ListView.builder(
            itemCount: details.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  details[index],
                  style: index == 0 || index == details.length - 1
                      ? TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
                      : TextStyle(fontSize: 14.0),
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(ExperiencePage());
}
