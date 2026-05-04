//Before Refactore
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/artical_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticalModel> articals = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articals = await NewsService(Dio()).getNews();
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
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articals.length, (
//               context,
//               index,
//             ) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 16),
//                 child: NewsTile(articalModel: articals[index]),
//               );
//             }),
//           );
//   }
// }
