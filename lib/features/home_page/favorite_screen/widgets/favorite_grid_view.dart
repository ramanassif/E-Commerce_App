import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/helper_widgets/review_star.dart';
import 'package:flutter/material.dart';

class FavoriteGridView extends StatefulWidget {
  final List<String> listName;
  final List<String> listImage;

  const FavoriteGridView({
    Key? key,
    required this.listName,
    required this.listImage,
  }) : super(key: key);

  @override
  State<FavoriteGridView> createState() => _FavoriteGridViewState();
}

class _FavoriteGridViewState extends State<FavoriteGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 16,
      ),
      child: SizedBox(
        height: 600,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          //physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.57,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20),
          itemCount: widget.listName.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'productDetailsScreen', arguments: {
                'product_image': widget.listImage[index],
                'product_name': widget.listName[index],
              });
            },
            child: Container(
              width: 170,
              height: 480,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kLightColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      widget.listImage[index],
                      width: 133,
                      height: 133,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        widget.listName[index],
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: const [
                        ReviewStar(
                          color: Colors.yellow,
                          size: 16,
                        ),
                        ReviewStar(
                          color: Colors.yellow,
                          size: 16,
                        ),
                        ReviewStar(
                          color: Colors.yellow,
                          size: 16,
                        ),
                        ReviewStar(
                          color: Colors.yellow,
                          size: 16,
                        ),
                        ReviewStar(
                          color: kLightColor,
                          size: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '\$299,43',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Row(
                          children: [
                            const Text(
                              '\$534,33',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '24% Off',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.listName.removeAt(index);
                                  widget.listImage.removeAt(index);
                                });
                              },
                              child: const Icon(
                                Icons.delete_outline,
                                size: 25,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
