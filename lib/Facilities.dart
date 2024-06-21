import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Facilities extends StatefulWidget {
  const Facilities({Key? key}) : super(key: key);

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Facilities',
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
          padding: const EdgeInsets.all(17),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              height: 30,
              width: 360,
              color: Appcolor.PrimaryColor12,
              child: Text('Women Facilities',style: TextStyle(fontSize: 17),)),
        ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Leave blank if no women facilities'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                      height: 30,
                      width: 360,
                      color: Appcolor.PrimaryColor12,
                      child: Text('Regular Classes',style: TextStyle(fontSize: 17),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Leave blank if no women facilities'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                      height: 30,
                      width: 360,
                      color: Appcolor.PrimaryColor12,
                      child: Text('Other Facilities',style: TextStyle(fontSize: 17),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',style: TextStyle(fontSize: 12),),
                ),
                Divider(height: 99,thickness: 2,)
        ]
    )
        ),
      ),
    );
  }
}
