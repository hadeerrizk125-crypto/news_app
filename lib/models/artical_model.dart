class ArticalModel {
  final String? image;
  final String title;
  final String? descreption;
 
  const ArticalModel({
    required this.image,
    required this.title,
    required this.descreption,
  });
 factory ArticalModel.fromJson(json)
  {
    return ArticalModel(
          image: json['urlToImage'],
          title: json['title'],
          descreption: json['description'],
        );
  }
}

