import 'package:flutter/material.dart';

class EtudPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        padding: EdgeInsets.all(16.0),
        children: [
          buildEducationCard('3rd year IT Student', 'Iset Sfax', '2023-2024'),
          buildEducationCard('2nd year It Student', 'Iset Sfax', '2020-2021'),
          buildEducationCard('1st year IT Student', 'Iset Sfax', '2019-2020'),
          buildEducationCard('Experimental baccalaureate', 'Maknassy high school ', '2018-2019'),
        ],
      ),
    );
  }
  Widget buildEducationCard(String degree, String university, String year) {
    return Center(
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                degree,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              Text(
                university,
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              Text(
                year,
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
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
      home: EtudPage(),
    ),
  );
}