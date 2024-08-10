// this is called package importing
import 'package:currency_converter/currency_converter_material_page.dart';
//import './currency_converter_material_page.dart'; // this is called relative importing
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}
//sjaknjka
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
