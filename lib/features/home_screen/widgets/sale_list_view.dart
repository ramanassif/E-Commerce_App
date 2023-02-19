import 'package:ecommerce_app/features/home_screen/widgets/product_item.dart';
import 'package:flutter/material.dart';

class SaleListView extends StatelessWidget {
  final List<String> listName;
  final List<String> listImage;
  const SaleListView({
    super.key,
    required this.listName,
    required this.listImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ProductItem(
            productName: listName[index],
            productImage: listImage[index],
            newPrice: '\$299,43',
            oldPrice: '\$534,33',
            offerPrecentValue: '24% Off',
          ),
          itemCount: listName.length,
        ),
      ),
    );
  }
}
