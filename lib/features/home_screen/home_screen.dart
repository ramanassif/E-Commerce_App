import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categoryName = [
    'Man Shirt',
    'Dress',
    'Man Work Equipment',
    'Woman Bag',
    'Man Shoses',
    'Woman Shoses',
  ];
  List<String> categoryIcon = [
    'assets/icons/shirt_man.svg',
    'assets/icons/dress.svg',
    'assets/icons/work_bag_man.svg',
    'assets/icons/woman_bag.svg',
    'assets/icons/man_shoes.svg',
    'assets/icons/woman_shoes.svg',
  ];
  List<String> productNameFlashSale = [
    'FS - Nike Air Max 270 React...',
    'FS - QUILTED MAXI CROS...',
    'FS - Nike Air Max 270 React...',
  ];
  List<String> productImageFlashSale = [
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
  ];
  List<String> productNameMegaSale = [
    'MS - Nike Air Max 270 React...',
    'MS - Nike Air Max 270 React...',
    'MS - Nike Air Max 270 React...',
  ];
  List<String> productImageMegaSale = [
    'assets/images/product4.png',
    'assets/images/product5.png',
    'assets/images/product4.png',
  ];

  List<String> recomendedProduct = [
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
  ];
  List<String> recomendedProductImage = [
    'assets/images/product6.png',
    'assets/images/product5.png',
    'assets/images/product7.png',
    'assets/images/product3.png',
  ];

  List<Widget> itemsBottomNavigationBar = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          color: kWhiteColor,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            const Divider(
              color: kLightColor,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: kPrimaryColor,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        CupertinoIcons.search,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topRight,
                        children: const [
                          Icon(
                            CupertinoIcons.cart,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.red,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Cart',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.local_offer_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Text(
                        'Offer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.person_2_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50,
                      child: buildSearchTextField(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: const [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Container(
                  width: 343,
                  height: 206,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Promotion_Image.png',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            const SizedBox(
                              width: 200,
                              height: 100,
                              child: Text(
                                'Super Flash Sale 50% Off',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                offerTimeContainer(time: '08'),
                                const SizedBox(
                                  width: 5,
                                ),
                                twoDots(),
                                const SizedBox(
                                  width: 5,
                                ),
                                offerTimeContainer(time: '34'),
                                const SizedBox(
                                  width: 5,
                                ),
                                twoDots(),
                                const SizedBox(
                                  width: 5,
                                ),
                                offerTimeContainer(time: '52'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              fiveDots(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      'More Category',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => categoryItem(
                      categoryItemName: categoryName[index],
                      categoryItemIcon: categoryIcon[index],
                    ),
                    itemCount: categoryName.length,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => productItem(
                      productName: productNameFlashSale[index],
                      productImage: productImageFlashSale[index],
                      newPrice: '\$299,43',
                      oldPrice: '\$534,33',
                      offerPrecentValue: '24% Off',
                    ),
                    itemCount: productNameFlashSale.length,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Mega Sale',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => productItem(
                      productName: productNameMegaSale[index],
                      productImage: productImageMegaSale[index],
                      newPrice: '\$299,43',
                      oldPrice: '\$534,33',
                      offerPrecentValue: '24% Off',
                    ),
                    itemCount: productNameMegaSale.length,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: 343,
                height: 206,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/recomended_product.png',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: Text(
                                'Recomended Product',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'We recommend the best for you',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 0.57,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 20),
                    itemCount: recomendedProduct.length,
                    itemBuilder: (context, index) => recomendedProductItem(
                      productName: recomendedProduct[index],
                      productImage: recomendedProductImage[index],
                      newPrice: '\$299,43',
                      oldPrice: '\$534,33',
                      offerPrecentValue: '24% Off',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget recomendedProductItem({
    required String productName,
    required String productImage,
    required String newPrice,
    required String oldPrice,
    required String offerPrecentValue,
  }) {
    return Container(
      width: 170,
      height: 450,
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
              productImage,
              width: 133,
              height: 133,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 100,
              child: Text(
                productName,
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
              children: [
                buildFiveStars(color: Colors.yellow),
                buildFiveStars(color: Colors.yellow),
                buildFiveStars(color: Colors.yellow),
                buildFiveStars(color: Colors.yellow),
                buildFiveStars(color: kLightColor),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              newPrice,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  oldPrice,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  offerPrecentValue,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFiveStars({required Color color}) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 1,
      ),
      child: Icon(
        Icons.star,
        color: color,
        size: 16,
      ),
    );
  }

  Widget productItem({
    required String productName,
    required String productImage,
    required String newPrice,
    required String oldPrice,
    required String offerPrecentValue,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 150,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          border: Border.all(
            color: kLightColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                productImage,
                width: 109,
                height: 109,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 100,
                child: Text(
                  productName,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newPrice,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    oldPrice,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    offerPrecentValue,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryItem(
      {required String categoryItemName, required String categoryItemIcon}) {
    return SizedBox(
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: kLightColor,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  color: kPrimaryColor,
                  categoryItemIcon,
                ),
              ),
            ),
          ),
          Text(
            categoryItemName,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget fiveDots() {
    return Center(
      child: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width / 4.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kPrimaryColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget twoDots() {
    return Column(
      children: const [
        CircleAvatar(
          radius: 2,
          backgroundColor: kWhiteColor,
        ),
        SizedBox(
          height: 3,
        ),
        CircleAvatar(
          radius: 2,
          backgroundColor: kWhiteColor,
        ),
      ],
    );
  }

  Container offerTimeContainer({required String time}) {
    return Container(
      width: 42,
      height: 41,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          time,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  TextFormField buildSearchTextField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(height: 0),
        hintText: 'Search Product',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey,
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
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? kPrimaryColor
                : states.contains(MaterialState.error)
                    ? Colors.red
                    : kPrimaryColor),
      ),
    );
  }
}
