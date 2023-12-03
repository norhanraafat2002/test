import 'package:flutter/material.dart';
import 'package:nikeshoeapp/widgets/all_items_widget.dart';
import 'package:nikeshoeapp/widgets/bottom_nav_bar.dart';
import 'package:nikeshoeapp/widgets/row_item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Icon(
                        Icons.sort,
                        size: 30,
                        color: Color(0xff475269),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F9FD),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF475269).withOpacity(0.3),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ]),
                        child: Badge(
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Color(0xFF475269),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Search'),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 27,
                      color: Color(0xFF475269),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RowItemWidget(),
              SizedBox(
                height: 20,
              ),
              AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
