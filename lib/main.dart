import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sql_shopping/card_provider.dart';

import 'product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CardProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Routing and Navigation',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ProductListScreen(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
