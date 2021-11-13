import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Woman'),
                  Text('Kids'),
                  Text('Shoes'),
                  Text('Bag'),
                ],
              ),
              const SizedBox(height: 16,),
              Expanded(
                  child: Image.asset('assets/cloth.jpeg', fit: BoxFit.cover,
                  )),
              Expanded(child: Image.asset('assets/bag.jpeg', fit: BoxFit.cover,)),
            ],

          ),
        ),
      ),
    );

  }
}
