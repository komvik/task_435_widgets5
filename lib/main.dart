import 'package:flutter/material.dart';
import 'package:task_435_widgets5/show_gesture_detector.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("task 435")),
        body: const myShowModalBottomSheet(),
      ),
    );
  }
}

class myShowModalBottomSheet extends StatelessWidget {
  const myShowModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: Item(),
      child: SizedBox(
        width: 350,
        height: 100,
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 239, 238, 238)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(
                              width: 150,
                              height: 50,
                              child: Image(
                                  image: AssetImage("assets/button1.jpg"))),
                          Divider(
                            indent: 15,
                            endIndent: 15,
                            color: Colors.black,
                          ),
                          Text(
                            "Info in boottom sheet",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: const Column(
            children: [
              SizedBox(
                  width: 150,
                  height: 50,
                  child: Image(image: AssetImage("assets/button1.jpg"))),
              Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.black,
              ),
              Text(
                "Press me",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
