import 'package:flutter/material.dart';


class Product_cards extends StatefulWidget {
  const Product_cards({super.key});

  @override
  State<Product_cards> createState() => _Product_cardsState();
}

class _Product_cardsState extends State<Product_cards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gothampro'),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {}),
            title: Text(
              'Карточки продуктов',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          body: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image3.png'),
                          height: 17,
                          width: 17,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Фрукты',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image7.png'),
                          height: 22,
                          width: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Овощи',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image6.png'),
                          height: 26,
                          width: 17,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Сладости',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              _Categoriya(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Categoriya() {
  return Expanded(
    child: TabBarView(children: [
      GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.8),
          itemCount: 6,
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent[100]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/image1.png',
                      ),
                      width: 90,
                    ),
                    Image(
                      image: AssetImage(
                        'assets/images/image8.png',
                      ),
                      width: 80,
                      // height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Киви',
                              style: TextStyle(),
                            ),
                            Text(' Органик продукт'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[850],
                          child: IconButton(
                            icon: const Icon(Icons.shopping_bag_outlined),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('50.000 сум'),
                    Text('50.000 Сум - за 1 кг'),
                  ]),
            );

          })),
      GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.8),
          itemCount: 8,
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/pear.png',
                      ),
                      width: 60,
                    ),
                    Text('Продукт'),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                    ),
                    Text('50.000 сум')
                  ]),
            );
          })),
      GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.8),
          itemCount: 6,
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/pear.png',
                      ),
                      width: 60,
                    ),
                    Text('Продукт'),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                    ),
                    Text('50.000 сум')
                  ]),
            );
          })),
    ]),
  );
}
