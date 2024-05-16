import 'package:flutter/material.dart';
import 'package:store_apps/widgets/custom_bottom.dart';
import 'package:store_apps/widgets/custom_elevated_button.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
        bottom: PreferredSize(
            child: Container(
              color: const Color.fromARGB(255, 176, 170, 170),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(34),
                child: Image.asset('images/mycart1.png'),
              ),
              Column(
                children: [
                  Text(
                    'Bell papper Red',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('1kg , price'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(text: '-'),
                      Text(' 1     '),
                      CustomElevatedButton(text: '+'),
                      Container(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          '4.99',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Image.asset('images/mycart2.png'),
              ),
              Column(
                children: [
                  Text(
                    'Egg Chicken Red',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('4pcs , price'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(text: '-'),
                      Text('1    '),
                      CustomElevatedButton(text: '+'),
                      Container(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          '1.99',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(34),
                child: Image.asset('images/mycart3.png'),
              ),
              Column(
                children: [
                  Text(
                    'Organic Bananas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('12kg , price'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(text: '-'),
                      Text('   1    '),
                      CustomElevatedButton(text: '+'),
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(34),
                child: Image.asset('images/mycart4.png'),
              ),
              Column(
                children: [
                  Text(
                    'Ginger',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('250gm , price'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomElevatedButton(text: '-'),
                      Text(' 1    '),
                      CustomElevatedButton(text: '+'),
                      Container(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          '2.99',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
          ),
          CustomButton(
            text: 'Go To Cheackout',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCheckoutDetails(context),
        child: Icon(Icons.payment),
      ),
    );
  }
}

void _showCheckoutDetails(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.delivery_dining),
              title: Text('Delivery'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('payment'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Discount'),
              onTap: () {},
            ),
            Divider(),
            Text('total: \$13.97'),
            ElevatedButton(
              onPressed: () {},
              child: Text('inform request'),
            ),
          ],
        ),
      );
    },
  );
}
