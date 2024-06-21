import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Legal extends StatefulWidget {
  const Legal({Key? key}) : super(key: key);

  @override
  State<Legal> createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Center(child: Text('Legal',
            style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur\n adipiscing elit',style: TextStyle(fontSize: 16),),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Container(
                height: 30,
                  width: 360,
                  color: Appcolor.PrimaryColor12,
                  child: Text('Privacy Policy',style: TextStyle(fontSize: 17),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.online_prediction),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('View Online',style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Container(
                  height: 30,
                  width: 360,
                  color: Appcolor.PrimaryColor12,
                  child: Text('Credits',style: TextStyle(fontSize: 17),)),
            ),
            Text('Lorem ipsum dolor sit amet, consectetur ',),
            Row(
              children: [
                Text('adipiscing'),
                Text('elit',style: TextStyle(color: Appcolor.PrimaryColor11),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
