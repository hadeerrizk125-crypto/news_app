import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: ("News"),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ("Cloud"),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),

        //  title:const Row(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             Text(
        //               "News",
        //               style: TextStyle(
        //                 fontSize: 22,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.black,
        //               ),
        //             ),
        //             Text(
        //               "Cloud",
        //               style: TextStyle(
        //                 fontSize: 22,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.orange,
        //               ),
        //             ),
        //           ],
        //         ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: const [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
