import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Prayer_time extends StatefulWidget {
  const Prayer_time({Key? key}) : super(key: key);

  @override
  State<Prayer_time> createState() => _Prayer_timeState();
}

class _Prayer_timeState extends State<Prayer_time> {
  bool _isShown = true;

  void _delete(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: Column(
              children: [
                const Text('Unknown'),
                SizedBox(height: 5,),
                Text('Not prayed'),
                SizedBox(height: 5,),
                Text('Fixed time'),
                SizedBox(height: 5,),
                Text('After athaan'),
              ],
            ),

          );
        });
  }

  String? _selectedTime;

  // We don't need to pass a context to the _show() function
  // You can safety use context as below
  Future<void> _show() async {
    final TimeOfDay? result =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }

  String dropdownvalue = 'After athaan';


  // List of items in our dropdown menu
  var items = [
    'Unknown',
    'Not prayed',
    'Fixed time',
    'After athaan',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text('Prayer time',
                style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 30,
              width: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Appcolor.PrimaryColor

              ),
              child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 15),)),
            )
          ],
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Iqmah time',style: TextStyle(fontSize: 20),),
                  // Container(
                  //   height: 22,
                  //   width: 64,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(4),
                  //     border: Border.all(color: Colors.black),
                  //     color: Appcolor.PrimaryColor12
                  //   ),
          ElevatedButton(
              onPressed: _show, child:  Text(
              _selectedTime != null ? _selectedTime! :'6:00 PM',style: TextStyle(color: Colors.black), ),
                      // child: Text("${selectedTime.hour}:${selectedTime.minute} ${selectedTime.period}",style: TextStyle(color: Colors.black),),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(const Size(70, 30)),
                          backgroundColor: MaterialStateProperty.all(Appcolor.PrimaryColor12),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )
                          ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                      ),
                    ),
                     // Text("${selectedTime.hour}:${selectedTime.minute}"),
                  // )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Maghrib',style: TextStyle(fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(child: Text('Iqmah time',style: TextStyle(fontSize: 20))),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,


                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),


                    // Padding(
                    //   padding: const EdgeInsets.only(left: 85),
                    //    Text('After athan'),
                    // // ),
                    // CupertinoButton(
                    //     onPressed: _isShown == true ? () => _delete(context) : null,
                    //     child:  Icon(Icons.keyboard_arrow_down,color: Colors.black,)),
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(child: Text('Minutes after athan',style: TextStyle(fontSize: 20))),


                       Text('6 minutes'),
                    // ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Isha',style: TextStyle(fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(child: Text('Iqmah',style: TextStyle(fontSize: 20))),

                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,


                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 130),
                    //    Text('Fixed time'),
                    // // ),
                    // CupertinoButton(
                    //     onPressed: _isShown == true ? () => _delete(context) : null,
                    //     child:  Icon(Icons.keyboard_arrow_down,color: Colors.black,))
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Iqmah time',style: TextStyle(fontSize: 20)),
                  ElevatedButton(
                      onPressed: _show, child:  Text(
                      _selectedTime != null ? _selectedTime! :'10:00 PM',style: TextStyle(color: Colors.black) ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(70, 30)),
                        backgroundColor: MaterialStateProperty.all(Appcolor.PrimaryColor12),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Jumu’ah',style: TextStyle(fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(child: Text('Khutbah',style: TextStyle(fontSize: 20))),

                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,


                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 120),
                   // Text('Fixed time'),
                   //  // ),
                   //  CupertinoButton(
                   //      onPressed: _isShown == true ? () => _delete(context) : null,
                   //      child:  Icon(Icons.keyboard_arrow_down,color: Colors.black,))
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Session 1',style: TextStyle(fontSize: 20)),
                    ElevatedButton(
                      onPressed: _show, child:  Text(
                        _selectedTime != null ? _selectedTime! :'01:15 PM',style: TextStyle(color: Colors.black), ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(70, 30)),
                        backgroundColor: MaterialStateProperty.all(Appcolor.PrimaryColor12),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Session 2 (optional)',style: TextStyle(fontSize: 20)),
                    ElevatedButton(
                      onPressed: _show, child:  Text(
                        _selectedTime != null ? _selectedTime! :'01:45 PM',style: TextStyle(color: Colors.black),),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(70, 30)),
                        backgroundColor: MaterialStateProperty.all(Appcolor.PrimaryColor12),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Session 3 (optional)',style: TextStyle(fontSize: 20)),
                    ElevatedButton(
                      onPressed: _show, child:  Text(
                        _selectedTime != null ? _selectedTime! :'02:15 PM',style: TextStyle(color: Colors.black), ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(40, 30)),
                        backgroundColor: MaterialStateProperty.all(Appcolor.PrimaryColor12),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('Session 4 (optional)',style: TextStyle(fontSize: 20))),

                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,


                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 55),
                  //      Text('N/A'),
                  //   // ),
                  //   CupertinoButton(
                  //       onPressed: _isShown == true ? () => _delete(context) : null,
                  //       child:  Icon(Icons.keyboard_arrow_down,color: Colors.black,))
                  ],
                ),
              ),
              Divider(height: 25,thickness: 1,),

            ],
          ),
        ),
      ),
    );
  }
}


