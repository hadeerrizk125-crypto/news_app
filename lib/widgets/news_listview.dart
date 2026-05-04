import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
 const  NewsListView({super.key,required this.articals});
  final List<ArticalModel> articals ;
 
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articals.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsTile(articalModel: articals[index]),
        );
      }),
    );
  }
}
