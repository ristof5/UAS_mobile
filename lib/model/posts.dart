class Posts {
  String desc;
  String title;
  String body;
  String imageUrl; // Tambahkan properti imageUrl

  Posts({
    required this.desc,
    required this.title,
    required this.body,
    required this.imageUrl, // Tambahkan parameter imageUrl pada constructor
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      desc: json['desc'],
      title: json['title'],
      body: json['tag'],
      imageUrl: json['thumb'], // Ganti 'image_url' dengan key yang sesuai dari data API
    );
  }
}
