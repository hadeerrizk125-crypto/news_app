import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticalModel>> getTopHeadlines({required category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=0758819882d8413eb434665cff6ed25c&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articals = jsonData["articles"];
      List<ArticalModel> articalList = [];
      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalList.add(articalModel);
      }
      return (articalList);
    } catch (e) {
      return [];
    }
  }
}

// class NewsService {
//   final Dio dio;
//   NewsService(this.dio);
//   void getNews() async {
//     Response responce = await dio.get(
//       "https://newsapi.org/v2/top-headlines?apiKey=0758819882d8413eb434665cff6ed25c&category=general",
//     );
//     Map<String,dynamic> jsonData = responce.data;
//     List<dynamic> articals = jsonData['articles'];
//     List<ArticalModel> articalsList = [];
//     for (var artical in articals) {
//       ArticalModel articalModel = ArticalModel(
//         image: artical['urlToImage'],
//         title: artical['title'],
//         descreption: artical['description'],
//       );
//       articalsList.add(articalModel);
//     }
//     print(articalsList);
//   }
// }
