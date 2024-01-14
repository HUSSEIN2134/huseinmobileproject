import 'package:flutter/material.dart';
import 'BookList.dart';
/*
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double _totalPrice = 0;
  bool _showSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الكتب المتوفرة',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          Tooltip(
            message: 'Reset selection',
            child: IconButton(
              onPressed: () {
                setState(() {
                  _totalPrice = 0;
                  for (var e in books) {
                   // e.selected = false;
                  }
                  _showSelected = false;
                });
              },
              icon: const Icon(
                Icons.restore,
              ),
            ),
          ),
          Tooltip(
            message: 'Show/Hide Selected Items',
            child: IconButton(
              onPressed: () {
                if (_totalPrice != 0) {
                  setState(() {
                    _showSelected = !_showSelected;
                  });
                }
              },
              icon: const Icon(
                Icons.shopping_cart_checkout,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.lightGreen.shade200,
          child: //_showSelected
             // ? ShowSelectedItems(width: screenWidth)
              //:
            Column(
            children: [
              SizedBox(height: 10),
              Text(
                ' ${_totalPrice.toStringAsFixed(2)}  السعر الجمالي  :ل.ل',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenWidth * 0.025),
              SizedBox(height: screenWidth * 0.025),
              Expanded(
                child: Center(
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: screenWidth * 0.025),
                          Row(
                            children: [
                              SizedBox(width: screenWidth * 0.24),
                              Checkbox(
                                value: books[index].selected,
                                onChanged: (bool? e) {
                                  if (e != null) {
                                    setState(() {
                                      books[index].selected = e;
                                      if (books[index].selected) {
                                        _totalPrice +=
                                            books[index].Price;
                                      } else {
                                        _totalPrice -=
                                            books[index].Price;
                                      }
                                    });
                                  }
                                },
                                activeColor: Colors.green,
                              ),
                              Center(
                                child: Text(
                                  books[index].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    fontSize:
                                    screenWidth < 600 ? 11.0 : 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                         // Image.network(
                         //   books[index].image,
                         //   height: screenWidth * 0.3,
                       //   ),
                       //   const SizedBox(height: 10),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/