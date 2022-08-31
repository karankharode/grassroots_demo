// ignore_for_file: file_names

class Tokens {
  final String image;
  final String title;
  final String subtitle;
  final bool active;
  Tokens({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.active,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) {
    return Tokens(
      image: json['image'],
      title: json['title'],
      subtitle: json['subtitle'],
      active: json['active'],
    );
  }

  Map toJson() {
    return {
      'image': image,
      'title': title,
      'subtitle': subtitle,
      'active': active,
    };
  }
}
