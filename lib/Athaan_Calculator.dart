import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Athaan_Calculator extends StatefulWidget {
  const Athaan_Calculator({Key? key}) : super(key: key);

  @override
  State<Athaan_Calculator> createState() => _Athaan_CalculatorState();
}

class _Athaan_CalculatorState extends State<Athaan_Calculator> {
  final List<String> _animals = ["Muslims world league", "Egyptian General Auhority", "Islamic University, Karachi","Umm Al-Qura, Makkah"];

  // the selected value
  String? _selectedAnimal;

  final List<String> _animals1 = ["Muslims world league", "Egyptian General Auhority", "Islamic University, Karachi","Umm Al-Qura, Makkah"];

  // the selected value
  String? _selectedAnimal1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: Padding(
         padding: const EdgeInsets.only(right: 40),
         child: Center(child: Text('Athaan Calculator',
           style: TextStyle(fontWeight: FontWeight.bold),)),
       ),
       bottom:  const PreferredSize(
         preferredSize: Size.fromHeight(1),
         child: Divider(height: 1,thickness: 1,),
       ),
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ',style: TextStyle(fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('magna aliqua. Ut enim ad minim veniam, quis\n nostrud exercitation ullamco'),
            ),
            Divider(height: 25,thickness: 2,),
            Text('Prayer Time in',style: TextStyle(fontSize: 18,color: Colors.black),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Calculation Method'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 44,
                // width: 328,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12)
                ),
                child: DropdownButton<String>(
                  value: _selectedAnimal,
                  onChanged: (value) {
                    setState(() {
                      _selectedAnimal = value;
                    });
                    debugPrint("You selected $_selectedAnimal");
                  },
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                          'Select Method',
                          style: TextStyle(color: Colors.black),
                        ),
                  ),
                  // Hide the default underline
                  underline: Container(),
                  // set the color of the dropdown menu
                  dropdownColor: Colors.white,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.black,
                    ),
                  ),
                  isExpanded: true,

                  // The list of options
                  items: _animals
                      .map((e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ))
                      .toList(),

                  // Customize the selected item
                  selectedItemBuilder: (BuildContext context) => _animals
                      .map((e) => Center(
                    child: Text(
                      e,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
                      .toList(),
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12)
              ),
              child: DropdownButton<String>(
                value: _selectedAnimal1,
                onChanged: (value) {
                  setState(() {
                    _selectedAnimal1 = value;
                  });
                  debugPrint("You selected $_selectedAnimal1");
                },
                hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hanafi',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.white,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                ),
                isExpanded: true,

                // The list of options
                items: _animals1
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ))
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _animals1
                    .map((e) => Center(
                  child: Text(
                    e,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ))
                    .toList(),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 320),
                child: Container(
                  height: 44,
                  // width: 328,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Appcolor.PrimaryColor10
                  ),
                  child: Center(child: Text('Done',style: TextStyle(color: Colors.white),)),
                ),
              ),
            )
          ],
        ),
        ),
      )
    );
  }
}
