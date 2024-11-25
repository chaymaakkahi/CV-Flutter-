import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/chayma.png'), // Update with your photo path
            ),
          ),
          SizedBox(height: 16.0),
          buildInfoItem(Icons.person, 'Chayma Akkachi'),
          buildInfoItem(Icons.work, 'Web developer / Content and Data entry / Freelancer'),
          buildInfoItem(Icons.email, 'chaymaakkachi@gmail.com', onTap: () {
            launch('mailto:chaymaakkachi@gmail.com?subject=Subject&body=Body'); // Replace with your actual email address, subject, and body
          }),
          buildInfoItem(Icons.add_link_rounded, 'Chayma Akkachi', onTap: () {
            launch('https://www.linkedin.com/in/chayma-akkachi-ab83751b2/'); // Replace with your actual LinkedIn profile URL
          }),
          buildInfoItem(Icons.phone, '+216 55 838 534', onTap: () {
            launch('tel:+216 55838534'); // Replace with your actual phone number
          }),
          buildInfoItem(Icons.location_on, 'Iset Sfax', onTap: () {
            launch('https://www.google.com/maps/place/ISET+Sfax/@34.7572151,10.7695801,17z/data=!3m1!4b1!4m6!3m5!1s0x1301d2c1f3c2991f:0xab7f8817c80e9617!8m2!3d34.7572107!4d10.772155!16s%2Fg%2F1v0bvvtp?entry=ttu'); // Replace with your actual address
          }),
        ],
      ),
    );
  }

  Widget buildInfoItem(IconData icon, String text, {VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: InfoPage(),
    ),
  );
}
