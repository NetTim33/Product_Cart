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
              style: TextStyle(
                  color: Colors.blueGrey[900], fontFamily: 'Gotham Pro Medium'),
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
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[100]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image5.png',
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
                        'Персик',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
        ],
      ),
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[100]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image5.png',
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
                        'Персик',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
        ],
      ),
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[100]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image5.png',
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
                        'Персик',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image2.png',
                ),
                width: 70,
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
                        'Авакадо',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                width: 70,
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
                        'Клубника',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent[200]),
            height: 250,
            width: 158,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(
                image: AssetImage(
                  'assets/images/image4.png',
                ),
                width: 70,
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
                        'Яблоко',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Medium', fontSize: 15),
                      ),
                      Text(
                        ' Органик продукт',
                        style: TextStyle(
                            fontFamily: 'Gotham Pro Regular', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
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
                height: 10,
              ),
              Text(
                '50.000 сум',
                style: TextStyle(fontFamily: 'Gotham Pro Medium', fontSize: 15),
              ),
              Text(
                '50.000 Сум - за 1 кг',
                style: TextStyle(fontFamily: 'Gotham Pro Regular', fontSize: 8),
              ),
            ]),
          ),
        ],
      ),
    ]),
  );
}
