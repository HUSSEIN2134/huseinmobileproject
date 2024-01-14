import 'package:google_nav_bar/google_nav_bar.dart  ';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:untitled/button_icons.dart';
import 'package:untitled/textFeild.dart';
import 'signedinpage.dart';
import 'register.dart';
import 'forget_password.dart';
import 'BookList.dart';
class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final useremail = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() {}

  void openrestpassword(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>  ResetPasswordPage(),
          settings: const RouteSettings(),
        ),
      );
    } catch (e) {
      print('Error navigating to the reset page: $e');
    }
  }

  void openPage2(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>  const BooksList(),
          settings: const RouteSettings(),
        ),
      );
    } catch (e) {
      print('Error navigating to the second page: $e');
    }
  }

  void openregister(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MyApp(),
          settings: const RouteSettings(),
        ),
      );
    } catch (e) {
      print('Error navigating to the register page: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('مكتبة مداد',
          style:
          TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),

        ),

        backgroundColor: Colors.green.shade400,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightGreen.shade200 ,
        child: SafeArea(

          child: Center(
            child: Column(
              children: [

                SizedBox(width: screenWidth * 0.1,height: screenWidth*0.03,),
               Image.network('https://books.almaaref.org/static/uploads/e24ea6fecf8564c6e36a0532f5ff083f.jpg',
               height:screenWidth*0.1,
               width: screenWidth*0.1,),
               // Icon(
                 // Icons.lock,
                //  size: 100,
               // ),
                SizedBox(width: screenWidth * 0.2,height: screenWidth*0.02,),
                const Text(
                  'مرحبا بك في مكتبة مداد',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(width: screenWidth * 0.1,height: screenWidth*0.05,),
                MyTextField(controller: useremail,
                  hinttext: 'Email',
                  securetext: false,
                ),
                SizedBox(width: screenWidth * 0.4,height: screenWidth*0.01
                  ,),
                MyTextField(controller: passwordcontroller,
                  hinttext: 'Password',
                  securetext: true,
                ),
                SizedBox(width: screenWidth * 0.1),
                Flexible(child:
                GestureDetector(
                  onTap: () => openrestpassword(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                   ),
                  ),
                ),
                ),
                SizedBox(width: screenWidth * 0.5,height: screenWidth*0.03),
                ElevatedButton(
                  onPressed: () {
                    if (useremail.text.isNotEmpty && passwordcontroller.text.isNotEmpty) {
                      openPage2(context);
                    } else {
                                                                      // Show an alert if either username or password is empty
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Please enter both username and password.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the alert
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Icon(Icons.login, size: 50),
                ),

                SizedBox(width: screenWidth * 0.5,height: screenWidth*0.02,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                     const Expanded(
                        child: Divider(
                          thickness:1,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:screenWidth *0.04),
                        child: Text(
                          'or continue with',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                                                              // for google shape

                SizedBox(width: screenWidth * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Squarephotos(
                     imagePath:
                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7ZRd2fV7IQHPWbdWHySOpCNGKpy58ndgiHg&usqp=CAU',
                 ),
                    SizedBox(width: screenWidth * 0.1,height: screenWidth*0.01,),

                                                               // for apple shape

                   const Squarephotos(
                      imagePath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwaKQL3ChPm76Owfy-WDwn-gOoe_ikM-VcrlPrDyuOMg&s',
                    ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.15,height: screenWidth*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a Member?'),
                    GestureDetector(
                      onTap: () => openregister(context),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         SizedBox(height: 4),

                          Text(
                            'Register Now',
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
