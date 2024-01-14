import 'package:flutter/material.dart';
import 'package:untitled/my_button.dart';
import 'BookList.dart';
import 'textFeild.dart';
import 'signin.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Signup',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.lightGreen.shade200,
        child: SafeArea(
          child: Flexible (child:
          Center(
            child: Column(
              children: [
                // SignupCard(),
                const SizedBox(height: 70),
                const Text(
                  'Enter Your Data : ',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 40),
                MyTextField(
                    controller: firstname,
                    hinttext: 'First Name',
                    securetext: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: lastname,
                    hinttext: 'Last Name',
                    securetext: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: email, hinttext: 'Email', securetext: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: password,
                    hinttext: 'Password',
                    securetext: true),
                const SizedBox(height: 20),
                const MyButton()


              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
