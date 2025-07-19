import 'package:flutter/material.dart';


class CurrencyConveterMaterialPage extends StatefulWidget {
  const CurrencyConveterMaterialPage({super.key});

  @override
  State<CurrencyConveterMaterialPage> createState() => _CurrencyConveterMaterialPageState();
}

class _CurrencyConveterMaterialPageState extends State<CurrencyConveterMaterialPage> {
 double result = 0;
final TextEditingController textEditingController = TextEditingController();

void convert(){
if (textEditingController.text.isNotEmpty) {
                      setState(() {
                        result = double.parse(textEditingController.text) * 86.20;
                      });
                      textEditingController.clear();
          } 
}

  @override
  Widget build(BuildContext context) {
final smallAlphabet = const TextStyle(
            letterSpacing: 1.5,
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black87,
          );
    final appColor = Colors.lightBlueAccent;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Currency Converter'),
          backgroundColor:appColor,
          centerTitle: true,
          titleTextStyle: smallAlphabet,
         
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [ 
               Text(
                "₹ ${result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                   ),
                    TextField(
                  controller: textEditingController,
                  style: smallAlphabet,
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount In USD',
                    hintStyle: smallAlphabet,
                    prefixIcon: Icon(Icons.attach_money),
                    prefixIconColor: Colors.black87,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: appColor,
                        width: 2,
                      ),
                    ),
                 ),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    convert();
                    FocusScope.of(context).unfocus();
                  },
                  style:ElevatedButton.styleFrom(
                    backgroundColor: appColor,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    maximumSize: const Size(double.infinity, 50),
                  ),
                  child:  Text(
                    'Convert',
                    style: smallAlphabet,
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
