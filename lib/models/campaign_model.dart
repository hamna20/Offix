class CampaignModel {
  final int id;
  final String imageUrl;
  final String details;
  final String name;
  final String description;

  CampaignModel({
    required this.id,
    required this.imageUrl,
    required this.details,
    required this.name,
    required this.description,
  });

  // fromJson factory constructor
  factory CampaignModel.fromJson(Map<String, dynamic> json) {
    return CampaignModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      details: json['details'],
      name: json['name'],
      description: json['description'],
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'details': details,
      'name': name,
      'description': description,
    };
  }
}

// Corrected instance creation
var campaign = CampaignModel(
  id: 1, // Unique identifier for the campaign
  imageUrl: 'https://example.com/holiday.jpg',
  details: 'Holiday Campaign',
  name: 'Campaign',
  description: 'A special holiday campaign',
);
