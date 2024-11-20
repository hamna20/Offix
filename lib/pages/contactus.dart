import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactUsPage(),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Service Hours:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Mon-Fri: 9:00 AM - 6:00 PM'),
            SizedBox(height: 16.0),
            Text(
              'Contact Information:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Email: support@example.com'),
            Text('Phone: +1 (123) 456-7890'),
            SizedBox(height: 24.0),
            Text(
              'Send us a message:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Subject',
              ),
            ),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Message',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  child: Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Clear form fields
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                    // Open email app
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {
                    // Dial phone number
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
