import 'package:flutter/material.dart';
import 'package:offix/pages/office_listing_page.dart'; // Ensure ListingPage is imported

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Include the ListingPage content directly
            OfficeListingPage(), // This displays the listing content on the search page
          ],
        ),
      ),
    );
  }
}
