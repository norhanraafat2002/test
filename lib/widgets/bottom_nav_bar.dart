import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikeshoeapp/widgets/bottom_cart_sheet.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF475269),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.category_outlined, size: 32, color: Colors.white),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) {
                  return BottomCartSheet();
                })),
              );
            },
            child: Icon(
              CupertinoIcons.cart,
              size: 32,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.favorite,
            size: 32,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 32,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
