// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/artical_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_listview.dart';

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({super.key});

//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

// class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
//   List<ArticalModel> articals = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articals = await NewsService(Dio()).getTopHeadlines();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : articals.isNotEmpty
//         ? NewsListView(articals: articals)
//         : SliverFillRemaining(
//             hasScrollBody: false,
//             child: Text(
//               'oops!there was an error,try later',
//               style: TextStyle(fontSize:30 , fontWeight: FontWeight.bold),
//             ),
//           );
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshoot) {
        if (snapshoot.hasData) {
          return NewsListView(articals: snapshoot.data!);
        } else if (snapshoot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Text(
              'oops!there was an error,try later',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
