import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottonNavBar extends StatelessWidget {
  ItemBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F9FD),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                color: Color(0xFF475269),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Text(
                  'Add To Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                  size: 32,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            decoration: BoxDecoration(
                color: Color(0xFF475269),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
