import 'package:coffee_app/Screens/home_screen.dart';
import 'package:coffee_app/utils/cards.dart';
import 'package:coffee_app/utils/icons.dart';
import 'package:coffee_app/utils/my_listtile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.pink[200],
            child: Icon(
              Icons.monetization_on,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.deepPurple[300],
          child: Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home),
                iconSize: 32,),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings),
                iconSize: 32,),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Card",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Cards(
                    balance: 5456.00,
                    expiryMonth: 20,
                    expiryYear: 2028,
                    cardNumber: 12345678,
                    color: Colors.deepPurple[300],
                  ),
                  Cards(
                    balance: 756.00,
                    expiryMonth: 10,
                    expiryYear: 2023,
                    cardNumber: 67576373,
                    color: Colors.blue[300],
                  ),
                  Cards(
                    balance: 4756.00,
                    expiryMonth: 4,
                    expiryYear: 3028,
                    cardNumber: 187345678,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconsClass(),
                  IconsClass(),
                  IconsClass(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: [
                  MyListTile(
                    title: "Statistics",
                    subTitle: "Payment and Income",
                    imagePath:
                        ("https://cdn-icons-png.flaticon.com/512/3187/3187040.png"),
                    color: Colors.deepPurple[300],
                  ),
                  MyListTile(
                    title: "Transaction",
                    subTitle: "Transaction History",
                    imagePath:
                        ("https://cdn-icons-png.flaticon.com/512/2761/2761064.png"),
                    color: Colors.orange[300],
                  ),
                  MyListTile(
                    title: "Statistics",
                    subTitle: "Payment and Income",
                    imagePath:
                        ("https://cdn-icons-png.flaticon.com/512/3187/3187040.png"),
                    color: Colors.blue[300],
                  ),
                  MyListTile(
                    title: "Statistics",
                    subTitle: "Payment and Income",
                    imagePath:
                        ("https://cdn-icons-png.flaticon.com/512/3187/3187040.png"),
                    color: Colors.yellow[300],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
