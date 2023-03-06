import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/explore_screen/widgets/fashion_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreScreenBody extends StatefulWidget {
  const ExploreScreenBody({Key? key}) : super(key: key);

  @override
  State<ExploreScreenBody> createState() => _ExploreScreenBodyState();
}

class _ExploreScreenBodyState extends State<ExploreScreenBody> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: kWhiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 12.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: [
                Container(
                  color: kWhiteColor,
                  width: isSearching
                      ? MediaQuery.of(context).size.width * 0.77
                      : MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    onChanged: (value) => setState(() {
                      isSearching = true;
                    }),
                    onEditingComplete: () {
                      setState(() {
                        if (searchController.text.isEmpty) {
                          isSearching = false;
                        }
                      });
                    },
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
                  ),
                ),
                Visibility(
                  visible: isSearching ? false : true,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'favoriteScreen');
                    },
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
                Visibility(
                  visible: isSearching ? false : true,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'notificationScreen');
                    },
                    child: Stack(
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
                  ),
                ),
                Visibility(
                  visible: isSearching ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_voice_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: isSearching
          ? GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: kWhiteColor,
                child: ListView(
                  children: [
                    const Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 270 React ENG',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Vapormax 360',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 270 React ENG ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 270 React',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air VaporMax Flyknit 3',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 97 Utility',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Container(
                color: kWhiteColor,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Text(
                        'Man Fashion',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Wrap(
                        children: const [
                          FashionItem(
                            title: 'Man Shirt',
                            icon: 'assets/icons/shirt_man.svg',
                          ),
                          FashionItem(
                            title: 'Man Work\nEquipment',
                            icon: 'assets/icons/work_bag_man.svg',
                          ),
                          FashionItem(
                            title: 'Man T-Shirt',
                            icon: 'assets/icons/t-shirt_man.svg',
                          ),
                          FashionItem(
                            title: 'Man Shoes',
                            icon: 'assets/icons/man_shoes.svg',
                          ),
                          FashionItem(
                            title: 'Man Pants',
                            icon: 'assets/icons/man_pants.svg',
                          ),
                          FashionItem(
                            title: 'Man\nUnderwear',
                            icon: 'assets/icons/man_underwear.svg',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Text(
                        'Woman Fashion',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Wrap(
                        children: const [
                          FashionItem(
                            title: 'Dress',
                            icon: 'assets/icons/dress.svg',
                          ),
                          FashionItem(
                            title: 'Woman\nT-Shirt',
                            icon: 'assets/icons/t-shirt_man.svg',
                          ),
                          FashionItem(
                            title: 'Woman\nPants',
                            icon: 'assets/icons/woman_pants.svg',
                          ),
                          FashionItem(
                            title: 'Skirt',
                            icon: 'assets/icons/skirt.svg',
                          ),
                          FashionItem(
                            title: 'Woman Bag',
                            icon: 'assets/icons/woman_bag.svg',
                          ),
                          FashionItem(
                            title: 'High Heels',
                            icon: 'assets/icons/woman_shoes.svg',
                          ),
                          FashionItem(
                            title: 'Bikini',
                            icon: 'assets/icons/bikini.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
