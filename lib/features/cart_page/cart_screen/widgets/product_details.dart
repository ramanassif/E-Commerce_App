import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productImage;

  const ProductDetails({
    Key? key,
    required this.productImage,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;
  int numOfProduct = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 12,
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
                  child:
                      Image.asset(widget.productImage, width: 72, height: 72),
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
                                width: 138,
                                child: Text(
                                  'Nike Air Zoom Pegasus 36 Miami',
                                  style: TextStyle(
                                      color: kSecondaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                                child: Icon(
                                  isFavorite
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  color: isFavorite
                                      ? const Color(0xffFB7181)
                                      : Colors.grey,
                                  size: 30,
                                ),
                              ),
                            ),
                            //const Spacer(),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Colors.grey,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Text(
                                '\$299,43',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        numOfProduct--;
                                      });
                                    },
                                    child: Container(
                                      width: 32,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: kLightColor,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.minus,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: kLightColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        numOfProduct > 1
                                            ? numOfProduct.toString()
                                            : '1',
                                        style: const TextStyle(
                                          color: kSecondaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        numOfProduct++;
                                      });
                                    },
                                    child: Container(
                                      width: 32,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: kLightColor,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
