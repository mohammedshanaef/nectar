import 'package:flutter/material.dart';
import 'package:store_apps/constant.dart';
import 'package:store_apps/widgets/customcard.dart';


class findProducts extends StatelessWidget {
  findProducts({super.key});

  final List<String> values = [
    'images/findproducts1.png',
    'images/findproducts2.png',
    'images/findproducts3.png',
    'images/findproducts4.png',
    'images/findproducts5.png',
    'images/findproducts6.png',
  ];
  final List<String> text = [
    'Frash Fruits & Vegetable',
    'Cooking oil & Ghee',
    'Meat & Fish',
    'Bakery & Snacks',
    'Dairy & Eggs',
    'Beverages',
  ];
  final List<Color> color = [
    Color(0xffEEF8F2),
    Color(0xffFFF6EE),
    Color(0xffFDE8E4),
    Color(0xffF4EBF7),
    Color(0xffFCF6E3),
    Color(0xffEDF7FC),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 12,
          ),
          itemCount: values.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.grey,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 10,
                    color: color[index],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text[index],
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  bottom: 75,
                  child: Image.asset(
                    values[index], //
                    height: 100,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: kPrimaryColor,
            ),
            label: 'Shoping',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: kPrimaryColor,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: kPrimaryColor,
            ),
            label: 'Shopping cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: kPrimaryColor,
            ),
            label: 'Favoirte',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: kPrimaryColor,
            ),
            label: 'Acount',
          ),
        ],
      ),
    );
  }
}
