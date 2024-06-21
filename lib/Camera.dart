import 'package:flutter/material.dart';

import 'Appcolor.dart';
class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 65),
          child: Center(child: Text('Camera',
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
      Text('Help us keep Go Pray looking good by emailing in a better, high-resolution image if the exterior of this mosque.'),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('Exterior photos can help people locate unfamiliar mosques'),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
            height: 44,
            // width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Appcolor.PrimaryColor11
            ),
            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email_outlined,color: Colors.white,),
                Text(' goprayfeedback@gmail.com',style: TextStyle(color: Colors.white),),
              ],
            ))
        ),
      ),
    ]
    )
      )
    );
  }
}
