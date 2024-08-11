// Currency Converter APP
// Hello I am Abdullah Naveed
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
  String selectedCurrency = "PKR";
  double result = 0;
  void convert() {
    if (kDebugMode) {
      setState(() {
        if (selectedCurrency == 'PKR') {
          result = double.parse(textEditingController.text) * 278.75;
        } else if (selectedCurrency == 'INR') {
          result = double.parse(textEditingController.text) * 83.95;
        } else if (selectedCurrency == 'EUR') {
          result = double.parse(textEditingController.text) * 0.92;
        } else if (selectedCurrency == 'GBP') {
          result = double.parse(textEditingController.text) * 0.79;
        } else if (selectedCurrency == 'AUD') {
          result = double.parse(textEditingController.text) * 1.52;
        } else if (selectedCurrency == 'CAD') {
          result = double.parse(textEditingController.text) * 1.38;
        } else if (selectedCurrency == 'NZD') {
          result = double.parse(textEditingController.text) * 1.67;
        } else if (selectedCurrency == 'CNY') {
          result = double.parse(textEditingController.text) * 7.17;
        } else if (selectedCurrency == 'SAR') {
          result = double.parse(textEditingController.text) * 3.75;
        } else if (selectedCurrency == 'AED') {
          result = double.parse(textEditingController.text) * 3.67;
        } else if (selectedCurrency == 'KWD') {
          result = double.parse(textEditingController.text) * 0.31;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${selectedCurrency} ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            // const SizedBox(height: 20),
            // Dropdown menu for currency selection
            Container(
              width: 90,
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: DropdownButton<String>(
                value: selectedCurrency,
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                underline: const SizedBox(), // Removes the default underline
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCurrency = newValue!;
                  });
                },
                items: <String>[
                  'PKR',
                  'INR',
                  'EUR',
                  'GBP',
                  'AUD',
                  'CAD',
                  'NZD',
                  'CNY',
                  'SAR',
                  'AED',
                  'KWD'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  "Convert",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
