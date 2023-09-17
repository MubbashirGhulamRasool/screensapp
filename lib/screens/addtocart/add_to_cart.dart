import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartView extends StatefulWidget {
  // final List cart = [];
  const AddToCartView({super.key });

  @override
  State<AddToCartView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddToCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Cart Screen'),
        backgroundColor: Color(0xFFF8A400), // Using a hexadecimal color code
        leading: SvgPicture.asset(
          'assets/splash1.svg', // Replace with the path to your SVG file
          width: 200,
          height: 200,
        ),
      ),
        //   body: ListView.builder(
        // itemCount: productDetails.length,
        // itemBuilder: (context,index){
        //   return ListTile(
        //     title: Text(productDetails[index]["name"]),
        //     subtitle: Text(productDetails[index]["price"].toString()),
        //     trailing: IconButton(
        //         onPressed: () {
        //           setState(() {
        //             cartItems.add(productDetails[index]);
        //           });
        //         },
        //         icon: const Icon(Icons.add),
        //       ),
        //   );
        // }
        // ),
    );
  }
}