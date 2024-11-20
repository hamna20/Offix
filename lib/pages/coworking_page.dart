import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:offix/models/campaign_model.dart';

class CoworkingPage extends StatelessWidget {
  CoworkingPage({Key? key}) : super(key: key); // Add key to constructor

  final List<CampaignModel> campaigns = [
    // Add const for performance
    CampaignModel(
      id: 1,
      name: 'Co working Space 1',
      imageUrl:
      'https://res.cloudinary.com/df4u3io71/image/upload/v1723167875/pixlr-image-generator-aa67d54c-0901-446a-9012-700ac72fa4f9_xz7cx8.webp',
      details: 'Co working Space 1 Details',
      description: 'Description for Co working Space 1',
    ),
    CampaignModel(
      id: 2,
      name: 'Co working Space 2',
      imageUrl:
      'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-4eb301b3-2000-4e77-bd17-91f97b71bafa_sfe5nf.webp',
      details: 'Co working Space 2 Details',
      description: 'Description for Co working Space 2',
    ),
    CampaignModel(
      id: 3,
      name: 'Co working Space 3',
      imageUrl:
      'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-63c52b88-9b63-49c8-aee7-63ab858c9d6d_kwyrc1.webp',
      details: 'Co working Space 3 Details',
      description: 'Description for Co working Space 3',
    ),
    CampaignModel(
      id: 4,
      name: 'Co working Space 4',
      imageUrl:
      'https://res.cloudinary.com/df4u3io71/image/upload/v1723167690/pixlr-image-generator-894a69e6-5652-4ae2-80e7-f35664ed7a4b_th7gv0.webp',
      details: 'Co working Space 4 Details',
      description: 'Description for Co working Space 4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Co-working Spaces'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Column(
            children: [
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: ImageFlipper(campaigns: campaigns),
              ),
              const SizedBox(
                  height: 10), // Space between carousel and new image
              _buildImageListing(
                context,
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167875/pixlr-image-generator-aa67d54c-0901-446a-9012-700ac72fa4f9_xz7cx8.webp',
                'Image_Listing 1',
                'Description for Image_Listing 1',
              ),
              const SizedBox(height: 10),
              _buildImageListing(
                context,
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167690/pixlr-image-generator-894a69e6-5652-4ae2-80e7-f35664ed7a4b_th7gv0.webp',
                'Image_Listing 2',
                'Description for Image_Listing 2',
              ),
              const SizedBox(height: 10),
              _buildImageListing(
                context,
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-4eb301b3-2000-4e77-bd17-91f97b71bafa_sfe5nf.webp',
                'Image_Listing 3',
                'Description for Image_Listing 3',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build image listings
  Widget _buildImageListing(
      BuildContext context, String imageUrl, String title, String description) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10), // Space between image and description box
        Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // Changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageFlipper extends StatelessWidget {
  final List<CampaignModel> campaigns;

  const ImageFlipper({Key? key, required this.campaigns})
      : super(key: key); // Add key to constructor

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: campaigns.map((campaign) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    campaign.imageUrl,
                    fit: BoxFit.cover,
                    height: 250.0,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                        const Offset(0, 3), // Changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaign.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        campaign.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
