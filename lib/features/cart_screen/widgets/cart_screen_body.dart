import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/cart_screen_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({Key? key}) : super(key: key);

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        color: kWhiteColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const CartScreenHeader(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/images/product3.png',
                            width: 72, height: 72),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
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
                                const SizedBox(
                                  width: 138,
                                  child: Text(
                                    'Nike Air Zoom Pegasus 36 Miami',
                                    style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Color(0xffFB7181),
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 90,
                                ),
                                Container(
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
                                Container(
                                  width: 32,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                    color: kLightColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/images/product6.png',
                            width: 72, height: 72),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
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
                                const SizedBox(
                                  width: 138,
                                  child: Text(
                                    'Nike Air Zoom Pegasus 36 Miami',
                                    style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 90,
                                ),
                                Container(
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
                                Container(
                                  width: 32,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                    color: kLightColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 56,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Cupon',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Color(0xffEBF0FF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 164,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kLightColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Items (3)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Shipping',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Import charges',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Total Price',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '\$598.86',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '\$40.00',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '\$128.00',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            '\$766.86',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16,
              ),
              child: CustomButton(
                title: 'Check Out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
