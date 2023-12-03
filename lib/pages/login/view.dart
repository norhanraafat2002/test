import 'package:flutter/material.dart';
import 'package:nikeshoeapp/pages/home_page/view.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(
          0xFFCEDDEE,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset('assets/images/login.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'forgot password',
                        style: TextStyle(
                            color: Color(0xFF475269),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: ((context) {
                      return HomePage();
                    })));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don`t have aacount?-',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF475269))),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
