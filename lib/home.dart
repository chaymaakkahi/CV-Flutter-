import 'package:flutter/material.dart';
import 'competences_page.dart';
import 'info_page.dart';
import 'etud_page.dart';
import 'experience_page.dart';
import 'portfolio_page.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool _isDarkMode = false;
  final List<Widget> _pages = [
    InfoPage(),
    EtudPage(),
    CompetencesPage(), // Moved CompetencesPage to the third position
    ExperiencePage(),
    PortfolioPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
            backgroundColor: Colors.brown
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Informations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Etudes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: 'Competences', // Moved "Competences" to the third position
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Experiences',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Portfolio',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: _isDarkMode ? Colors.black : null,
        ),
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _isDarkMode = !_isDarkMode;
                  });
                },
                child: Icon(
                  _isDarkMode ? Icons.brightness_2 : Icons.brightness_2_outlined,
                  color: Colors.white,
                ),
                backgroundColor: _isDarkMode ? Colors.blue : Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Positioned(
              bottom: 80.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {
                  _showLanguageDialog();
                },
                child: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Set the app's locale to English
                      context.setLocale(Locale('en', 'US'));
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('English'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Set the app's locale to French
                      context.setLocale(Locale('fr', 'FR'));
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('French'),
                ),
                // Add more languages as needed
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
        );
      },
    );
  }
}
