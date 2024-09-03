import 'package:flutter/material.dart';

// 1. crate a variable that stores the converted currency value
// crate a function that multiplies the ci=urrency int
// store the value in the variable that we have converted
//dispaly the variable

//const means the every widget inside is of const type, and we cannot write const to any immediate parent widget and are immutable and doesnt rebuid upon rebuilding
// we can create a variable and assign to a widegt  inside the build function

//MArgin is the gap outside the conatainer to the screen whereas
// padding is the gap related to inside of the container with also other element
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  //<> this is generic type return from a function

  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();

//here we cnnot create muttable variables of this class so another priavte class
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  void convert() {
    setState(() {
      // means this widget tree wants a rebuild and call the build function
      result = double.parse(textEditingController.text) * 83.41;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is like a body in which we are able to add footers, headers, etc.

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
        title: const Text(
          "Currency Converter",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "INR ${result !=0? result.toStringAsFixed(3): result.toStringAsFixed(0)}",
                style: const TextStyle(
                  fontWeight: FontWeight.w700, // 700 is bold by default
                  fontStyle: FontStyle.normal,
                  fontSize: 45,
                  color: Colors.black,
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  //so there is for back called suffix
                  prefixIcon: Icon(Icons.monetization_on_sharp),
                  prefixIconColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)) // we havve the concept of focused boarder, enabled boarder
              
                      ),
                ),
                keyboardType: const TextInputType
                    .numberWithOptions(), //options of signed and decimal can be marked ass ture if not
              ),
              const SizedBox(height: 10,),
              //buttons
              // two types raised and appreas like atext
              ElevatedButton(
                onPressed: convert,
                // dont write () as writing this means returning void as inpur 
              
                style: TextButton.styleFrom(
                  elevation: (20),
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(double.infinity,
                      50), //we can add the shape of the border as shape:
                ),
                child: const Text(
                  "Convert me!!!",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ), // The child property should be at the end
              ),
            ],
          ),
        ),
      ),
    );
  }
}
