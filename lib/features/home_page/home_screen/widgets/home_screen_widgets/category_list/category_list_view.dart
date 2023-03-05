import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/category_list/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CategoryItem(
            categoryItemName: categoryName[index],
            categoryItemIcon: categoryIcon[index],
          ),
          itemCount: categoryName.length,
        ),
      ),
    );
  }
}
