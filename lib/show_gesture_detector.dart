import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 200,
      color: Colors.blue[200],
      child: GestureDetector(
        onTap: () {
          print("object");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Box was tapped"),
              duration: Duration(seconds: 10),
            ),
          );
        },
        child: const Center(child: Text("Tap hie")),
      ),
      // child: const Text('Hello World!'),
    );
  }
}
