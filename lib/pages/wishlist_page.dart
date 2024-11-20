import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:offix/providers/wishlist_provider.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WishlistProvider>(
      builder: (context, wishlistProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Wishlist'),
          ),
          body: wishlistProvider.wishlist.isEmpty
              ? Center(
            child: Text('Your wishlist is empty.'),
          )
              : ListView.builder(
            itemCount: wishlistProvider.wishlist.length,
            itemBuilder: (context, index) {
              final campaign = wishlistProvider.wishlist[index];
              return ListTile(
                leading: Image.network(
                  campaign.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error),
                ),
                title: Text('Campaign ID: ${campaign.id}'),
                subtitle: Text(campaign.details),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    wishlistProvider.removeFromWishlist(campaign);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
