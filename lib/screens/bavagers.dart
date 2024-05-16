import 'package:flutter/material.dart';
import 'package:store_apps/constant.dart';
import 'package:store_apps/widgets/custom_elevated_button.dart';
import 'package:store_apps/widgets/customcard.dart'; //

class BavagersScreen extends StatelessWidget {
  BavagersScreen({super.key});

  final List<String> values = [
    'images/bavareges1.png',
    'images/bavareges2.png',
    'images/bavareges3.png',
    'images/bavareges4.png',
    'images/bavareges5.png',
    'images/bavareges6.png',
  ];
  final List<String> text = [
    'Diet coke',
    'Sprite Can',
    'Apple & Grape ',
    'Orenge Juice',
    'Coca Cola Can',
    'Pepsi Can',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Beverages'),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff53B175),
              minimumSize: Size(40, 40), // Control The Size Of Button
            ),
            onPressed: () {},
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
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
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 3),
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff53B175),
                                  minimumSize: Size(
                                      40, 40), // Control The Size Of Button
                                ),
                                onPressed: () {},
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () => _showAddItemForm(context),
        child: Icon(Icons.add),
      ),
      
    );
  }
}

void _showAddItemForm(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'price',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Add Item'),
              onPressed: () {
                //
              },
            ),
          ],
        ),
      );
    },
  );
}
