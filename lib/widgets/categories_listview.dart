import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: "Technology", image: "assets/tecnology.jpg"),
    CategoryModel(categoryName: "Business", image: "assets/Business.jpg"),
    CategoryModel(categoryName: "Science", image: "assets/science.jpg"),
    CategoryModel(categoryName: "Sports", image: "assets/sports.jpg"),
    CategoryModel(categoryName: "health", image: "assets/health-picjumbo-com.jpg"),
    CategoryModel(categoryName: "Entertainment", image: "assets/entertainment.jpg"),
    CategoryModel(categoryName: "General", image: "assets/general.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return  CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
