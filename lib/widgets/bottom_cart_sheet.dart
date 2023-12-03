import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFCEDDEE),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFFCEDDEE),
          padding: EdgeInsets.all(14),
          child: Column(children: [
            for (int i = 1; i < 3; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF475296),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ]),
                child: Row(children: [
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 60),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset(
                          "assets/images/$i.png",
                          height: 130,
                          width: 130,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nike Shoe',
                          style: TextStyle(
                              color: Color(0xFF475269),
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F9FD),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFCEDDEE),
                                        blurRadius: 5,
                                        spreadRadius: 1),
                                  ]),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 20,
                                color: Color(0xFF475269),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '02',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF475269),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F9FD),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFCEDDEE),
                                        blurRadius: 5,
                                        spreadRadius: 1),
                                  ]),
                              child: Icon(
                                CupertinoIcons.add,
                                size: 20,
                                color: Color(0xFF475269),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFCEDDEE),
                                blurRadius: 5,
                                spreadRadius: 1),
                          ]),
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                  ),
                ]),
              ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475296),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Delivery Fee:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269)),
                      ),
                      Spacer(),
                      Text(
                        '\$20',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Color(0xFF475269),
                  ),
                  Row(
                    children: [
                      Text(
                        'Sub_Total:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269)),
                      ),
                      Spacer(),
                      Text(
                        '\$100',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269)),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Color(0xFF475269),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Discount:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269)),
                      ),
                      Spacer(),
                      Text(
                        '\$-10',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  children: [
                    Text('Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF475269),
                        ))
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text('\$120',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            )
          ])),
    );
  }
}
