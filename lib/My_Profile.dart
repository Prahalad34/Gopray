import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class My_Profile extends StatefulWidget {
  const My_Profile({Key? key}) : super(key: key);

  @override
  State<My_Profile> createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Center(child: Text('My Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
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
            Container(
              height: 44,
              // width: 400,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: 'Username',
                  suffixIcon: Icon(Icons.create_outlined,color: Appcolor.PrimaryColor,)
                ),
              ),
            ),
            Container(
              height: 44,
              // width: 400,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    hintText: '9999999999',
                    suffixIcon: Icon(Icons.create_outlined,color: Appcolor.PrimaryColor,)
                ),
              ),
            ),
            Divider(height: 20,thickness: 2,),
          
            // Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et doloremagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco')
         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ',style: TextStyle(fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco',style: TextStyle(fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }
}
