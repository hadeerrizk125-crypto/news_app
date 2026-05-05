class ArticalModel {
  final String? image;
  final String? url;
  final String title;
  final String? descreption;

  const ArticalModel({
    required this.url,
    required this.image,
    required this.title,
    required this.descreption,
  });
  factory ArticalModel.fromJson(json) {
    return ArticalModel(
      url:json['url'],
      image: json['urlToImage'],
      title: json['title'],
      descreption: json['description'],
    );
  }
}
