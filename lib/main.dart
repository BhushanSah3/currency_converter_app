import 'package:flutter/material.dart';
import 'package:currency_converter_app/currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

//Design system app 

//Material design by google  & Coupertino by apple

//creating widget
//types:
// stateless,stateful ,inherited widged

//What is State :data which determine how the app should look like eg text ,number
//in stateless widget :state are immutable and app cannot work with any user interaction

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //making const and asking for key

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
