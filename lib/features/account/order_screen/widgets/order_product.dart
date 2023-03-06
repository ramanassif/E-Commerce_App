import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class OrderProduct extends StatelessWidget {
  final String productImage;
  final IconData favoriteIcon;
  final Color color;

  const OrderProduct({
    Key? key,
    required this.productImage,
    required this.favoriteIcon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 104,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: kLightColor,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(productImage, width: 72, height: 72),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              flex: 3,
                              child: SizedBox(
                                child: Text(
                                  'Nike Air Zoom Pegasus 36 Miami',
                                  style: TextStyle(
                                      color: kSecondaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  favoriteIcon,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          '\$299,43',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
