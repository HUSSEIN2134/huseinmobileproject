import 'package:flutter/material.dart';
import 'signedinpage.dart';
import 'signin.dart'; // Import your LoginPage class

class MyButton extends StatelessWidget {

  const MyButton({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginpage()), // Correct class name
        );
      },
    child: MouseRegion(
    cursor: SystemMouseCursors.click,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.38),
        // Use a percentage-based margin, adjust as needed
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4), // Decreased border radius
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
      ),
    );
  }
}
