import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          children: [
            buildProjectBox('CV', 'https://github.com/chaymaakkahi/project1', 'assets/images/icon.png'),
            buildProjectBox('Prothesia', 'https://github.com/chaymaakkahi/project2','assets/images/logo.jpeg'),
          ],
        ),
      ),
    );
  }

  Widget buildProjectBox(String title, String githubLink, String imagePath) {
    return GestureDetector(
      onTap: () {
        launch(githubLink); // Open the GitHub link in a web browser
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
              Image.asset(
                imagePath,
                height: 80.0, // Adjust the height as needed
                width: 80.0, // Adjust the width as needed
                fit: BoxFit.contain,
              ),
              SizedBox(height: 8.0),
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
}

void main() {
  runApp(
    MaterialApp(
      home: PortfolioPage(),
    ),
  );
}
