import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:offix/models/campaign_model.dart';
import 'package:offix/providers/wishlist_provider.dart';

class OfficeListingPage extends StatelessWidget {
  final List<CampaignModel> campaigns = [
    CampaignModel(
      id: 1,
      name: 'Office Space 1',
      imageUrl: 'https://res.cloudinary.com/df4u3io71/image/upload/v1723167875/pixlr-image-generator-aa67d54c-0901-446a-9012-700ac72fa4f9_xz7cx8.webp',
      details: 'Office Space 1 Details',
      description: 'Description for Office Space 1',
    ),
    CampaignModel(
      id: 2,
      name: 'Office Space 2',
      imageUrl: 'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-4eb301b3-2000-4e77-bd17-91f97b71bafa_sfe5nf.webp',
      details: 'Office Space 2 Details',
      description: 'Description for Office Space 2',
    ),
    CampaignModel(
      id: 3,
      name: 'Office Space 3',
      imageUrl: 'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-63c52b88-9b63-49c8-aee7-63ab858c9d6d_kwyrc1.webp',
      details: 'Office Space 3 Details',
      description: 'Description for Office Space 3',
    ),
    CampaignModel(
      id: 4,
      name: 'Office Space 4',
      imageUrl: 'https://res.cloudinary.com/df4u3io71/image/upload/v1723167690/pixlr-image-generator-894a69e6-5652-4ae2-80e7-f35664ed7a4b_th7gv0.webp',
      details: 'Office Space 4 Details',
      description: 'Description for Office Space 4',
    ),
  ];

  OfficeListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        children: [
          const SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: ImageFlipper(campaigns: campaigns),
          ),
          const SizedBox(height: 10),
          // First additional image listing
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167875/pixlr-image-generator-aa67d54c-0901-446a-9012-700ac72fa4f9_xz7cx8.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionPage(campaign: campaigns[0]),
                ),
              );
            },
            child: Container(
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
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Image_Listing 1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Description for Image_Listing 1',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Second additional image listing
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167690/pixlr-image-generator-894a69e6-5652-4ae2-80e7-f35664ed7a4b_th7gv0.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionPage(campaign: campaigns[3]),
                ),
              );
            },
            child: Container(
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
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Image_Listing 2',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Description for Image_Listing 2',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Third additional image listing
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-4eb301b3-2000-4e77-bd17-91f97b71bafa_sfe5nf.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionPage(campaign: campaigns[1]),
                ),
              );
            },
            child: Container(
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
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Image_Listing 3',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Description for Image_Listing 3',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageFlipper extends StatelessWidget {
  final List<CampaignModel> campaigns;

  const ImageFlipper({Key? key, required this.campaigns}) : super(key: key);

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
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        campaign.imageUrl,
                        width: double.infinity,
                        height: 250.0,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey,
                          child: const Center(
                            child: Text(
                              'Image not available',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Consumer<WishlistProvider>(
                        builder: (context, wishlistProvider, _) {
                          final isInWishlist = wishlistProvider.isInWishlist(campaign);
                          return IconButton(
                            icon: Icon(
                              isInWishlist ? Icons.favorite : Icons.favorite_border,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              if (isInWishlist) {
                                _showRemoveConfirmationDialog(context, campaign, wishlistProvider);
                              } else {
                                wishlistProvider.addToWishlist(campaign);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('${campaign.name} added to wishlist'),
                                    duration: const Duration(seconds: 2),
                                    backgroundColor: Colors.purple,
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(campaign: campaign),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
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
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }

  void _showRemoveConfirmationDialog(
      BuildContext context, CampaignModel campaign, WishlistProvider wishlistProvider) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Remove from Wishlist'),
          content: Text('Are you sure you want to remove ${campaign.name} from your wishlist?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                wishlistProvider.removeFromWishlist(campaign);
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${campaign.name} removed from wishlist'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}

class DescriptionPage extends StatelessWidget {
  final CampaignModel campaign;

  const DescriptionPage({Key? key, required this.campaign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(campaign.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID: ${campaign.id}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Name: ${campaign.name}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Description: ${campaign.description}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
