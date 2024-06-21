import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Mapview extends StatefulWidget {
  const Mapview({super.key});

  @override
  State<Mapview> createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -8,
        title: Text('Back'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                height: 441,
                width: 328,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.indigo)
                ),
                child: Image.asset('assets/frame6.png'),
              ),
              Card(
                child: Container(
                  height: 130,
                    // width: 328,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor),),
                          Text('on the southern part of the Temple Mount or Haram al-Sharif',style: TextStyle(fontSize: 14),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('2 Km Away',style: TextStyle(color: Colors.black),),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text('Dhuhr',style: TextStyle(color: Appcolor.PrimaryColor),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('07:09 AM'),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
