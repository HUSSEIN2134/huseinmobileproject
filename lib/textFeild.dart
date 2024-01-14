import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool securetext;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hinttext,
    required this.securetext,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }
    double fontSize = screenWidth < 600 ? 17.0 : 25.0;
    double horizontalPadding = screenWidth < 600 ? screenWidth*0.05: screenWidth*0.4;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: TextField(
        style: TextStyle(fontSize: fontSize),
        controller: widget.controller,
        obscureText: !_showPassword && widget.securetext,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hinttext,
          suffixIcon: widget.securetext
              ? IconButton(
            icon: Icon(_showPassword
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
