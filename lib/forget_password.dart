import 'package:flutter/material.dart';
import 'textFeild.dart';
import 'signin.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key});

  final resetemail = TextEditingController();

  void openSignIn(BuildContext context) {
    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => loginpage(),
          settings: const RouteSettings(),
        ),
      );
    } catch (e) {
      print('Error navigating to the login page: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset Password Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightGreen.shade200,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text(
                  'Enter Your Email To Reset Your Password :',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                MyTextField(
                    controller: resetemail,
                    hinttext: 'Your Email',
                    securetext: false),
                const SizedBox(height: 50),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(

                    onTap: () => openSignIn(context),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
