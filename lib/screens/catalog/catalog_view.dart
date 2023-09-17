import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:screensapp/screens/catalog/products_details.dart';

import '../addtocart/add_to_cart.dart';
import '../home/home_view.dart';

class CatalogView extends StatefulWidget {
  const CatalogView({super.key});

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  var _currentIndex = 0;
  List cartItems = [];

  void catalog() {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog Screen ${cartItems.length.toString()}'),
        backgroundColor: Color(0xFFF8A400), // Using a hexadecimal color code
        leading: SvgPicture.asset(
          'assets/splash1.svg', // Replace with the path to your SVG file
          width: 200,
          height: 200,
        ),
      ),
      body: ListView.builder(
        itemCount: productDetails.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(productDetails[index]["name"]),
            subtitle: Text(productDetails[index]["price"].toString()),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    cartItems.add(productDetails[index]);
                  });
                },
                icon: const Icon(Icons.add),
              ),
          );
        }
        ),
           floatingActionButton: FloatingActionButton(
        onPressed: () {
          // friendList.add("Mussadiq");
          // addItem();
            Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AddToCartView(),
        ),
      );
        },
        child: Text("View"),
      ),
      bottomNavigationBar: Container(
        // color: Color(0xFFF8A400),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Setting"),
              selectedColor: Color.fromARGB(255, 150, 132, 0),
            ),
          ],
        ),
      ),
    );
  }
}