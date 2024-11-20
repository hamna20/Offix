import 'package:flutter/material.dart';
import 'package:offix/models/campaign_model.dart';

class WishlistProvider with ChangeNotifier {
  final List<CampaignModel> _wishlist = [];

  List<CampaignModel> get wishlist => _wishlist;

  bool isInWishlist(CampaignModel campaign) {
    return _wishlist.any((item) => item.id == campaign.id);
  }

  void addToWishlist(CampaignModel campaign) {
    _wishlist.add(campaign);
    notifyListeners();
  }

  void removeFromWishlist(CampaignModel campaign) {
    _wishlist.removeWhere((item) => item.id == campaign.id);
    notifyListeners();
  }
}
