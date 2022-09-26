import 'package:coffee_app/utils/coffee_tiles.dart';
import 'package:coffee_app/utils/coffee_type.dart';
import 'package:coffee_app/utils/special_for_you.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //user tapped on coffee types

  final List coffeeTypeList = [
    ["cappucino", true],
    ["Lattte", false],
    ["Black", false],
    ["Tea", false],
    ["Lemon Tea", false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypeList.length; i++) {
        coffeeTypeList[i][1] = false;
      }
      coffeeTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Find The Best Coffee For You",
                  style: GoogleFonts.bebasNeue(fontSize: 35),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Text("Find your coffee"),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Find Your Coffee...",
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // Horizontal list type of coffee

            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeTypeList.length,
                    itemBuilder: (context, index) {
                      return CoffeeTypes(
                        coffeeType: coffeeTypeList[index][0],
                        isSelected: coffeeTypeList[index][1],
                        onTap: () {
                          coffeeTypeSelected(index);
                        },
                      );
                    })),

            //horizontal listView of coffee
            Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CoffeeTiles(
                      coffeeImagePath:
                          "https://images.unsplash.com/photo-1610632380989-680fe40816c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      coffeeName: "Latte",
                      coffeePrice: "4.20",
                    ),
                    CoffeeTiles(
                      coffeeImagePath:
                          "https://images.unsplash.com/photo-1507133750040-4a8f57021571?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      coffeeName: "Black",
                      coffeePrice: "3.20",
                    ),
                    CoffeeTiles(
                      coffeeImagePath:
                          "https://images.unsplash.com/photo-1610632380989-680fe40816c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      coffeeName: "Cappucino",
                      coffeePrice: "5.20",
                    ),
                    CoffeeTiles(
                      coffeeImagePath:
                          "https://images.unsplash.com/photo-1485808191679-5f86510681a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      coffeeName: "Tea",
                      coffeePrice: "8.20",
                    ),
                  ],
                )),

            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Special for you",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 150,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialForYou(),
                    SpecialForYou(),
                    SpecialForYou(),
                    SpecialForYou(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
