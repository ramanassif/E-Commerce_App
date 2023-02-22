import 'package:ecommerce_app/features/favorite_screen/widgets/favorite_product_item.dart';
import 'package:flutter/material.dart';

class FavoriteGridView extends StatelessWidget {
  final List<String> listName;
  final List<String> listImage;

  const FavoriteGridView({
    Key? key,
    required this.listName,
    required this.listImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: SizedBox(
        height: 600,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          clipBehavior: Clip.none,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.57,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20),
          itemCount: listName.length,
          itemBuilder: (context, index) => FavoriteProductItem(
            productName: listName[index],
            productImage: listImage[index],
            newPrice: '\$299,43',
            oldPrice: '\$534,33',
            offerPercentValue: '24% Off',
          ),
        ),
      ),
    );
  }
}
