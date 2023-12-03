import 'package:flutter/material.dart';
import 'package:nikeshoeapp/widgets/item_bottom_nav_bar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEDDEE),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Icon(Icons.arrow_back,
                          size: 30, color: Color(0xFF475269)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              //height: MediaQuery.of(context).size.height * 0.43,
              height: 350,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  height: 230,
                  width: 230,
                  margin: EdgeInsets.only(top: 20, right: 70),
                  decoration: BoxDecoration(
                      color: Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Image.asset(
                  "assets/images/1.png",
                  height: 350,
                  width: 350,
                  fit: BoxFit.contain,
                ),
              ]),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.4,
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Nike Shoe',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF475269),
                        ),
                      ),
                      Text(
                        '\$55',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'This is description of the shoe product This is description of the shoe product This is description of the shoe product.',
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Size:',
                        style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '37 - 38 - 39',
                        style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: ItemBottonNavBar(),
    );
  }
}
