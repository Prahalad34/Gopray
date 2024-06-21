import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class NoNotofication extends StatefulWidget {
  const NoNotofication({Key? key}) : super(key: key);

  @override
  State<NoNotofication> createState() => _NoNotoficationState();
}

class _NoNotoficationState extends State<NoNotofication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/no1.png',color: Appcolor.PrimaryColor25,),
            SizedBox(height: 5,),
            Text('No notifications yet',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            Text('We ll let you know when updates arrive!'),
            SizedBox(height: 10,),
            Card(
              child: Container(
                height: 44,
                width: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                ),
                  child: Center(child: Text('Notification Setting',style: TextStyle(color: Appcolor.PrimaryColor,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
