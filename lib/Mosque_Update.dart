import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Camera.dart';
import 'package:go_pray/Contact_Details.dart';
import 'package:go_pray/Facilities.dart';
import 'package:go_pray/Location.dart';
import 'package:go_pray/Prayer_notes.dart';
import 'package:go_pray/Prayer_time.dart';
import 'package:go_pray/Report.dart';
class Mosque_Update extends StatefulWidget {
  const Mosque_Update({Key? key}) : super(key: key);

  @override
  State<Mosque_Update> createState() => _Mosque_UpdateState();
}

class _Mosque_UpdateState extends State<Mosque_Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Center(child: Text('Update Mosque')),
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Help us keep mosque information up to date for the community!',style: TextStyle(fontSize: 14),),
            Divider(height: 40,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Prayer_time(),));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.circle,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8 ,),
                  Expanded(child: Text('Prayer times',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:140,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),
                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Prayer_notes(),));
              },
              child: Row(
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.my_library_books,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8 ,),
                  Expanded(child: Text('Prayer notes',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:140,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),
                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Location(),));
              },
              child: Row(
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.location_on_outlined,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8 ,),
                  Expanded(child: Text('Location',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:170,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),
                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Facilities(),));
              },
              child: Row(
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.info_outline,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8 ,),
                  Expanded(child: Text('Facilities',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:170,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),

                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact_Details(),));
              },
              child: Row(
                children: [
                SizedBox(width:20 ,),
                  Icon(Icons.phone,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8,),
                   Expanded(child: Text('Contact details',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:125,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),
                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Camera(),));
              },
              child: Row(
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.photo_size_select_actual_outlined,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8,),
                  Expanded(child: Text('Photos',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:185,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),

                ],
              ),
            ),
            Divider(height: 30,thickness: 2,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Report(),));
              },
              child: Row(
                children: [
                  SizedBox(width:20 ,),
                  Icon(Icons.cancel_outlined,color: Appcolor.PrimaryColor,),
                  SizedBox(width:8,),
                  Expanded(child: Text('Report Problem',style: TextStyle(fontSize: 17),)),
                  // SizedBox(width:125,),
                  Icon(Icons.arrow_forward_ios_sharp,size: 16,color: Appcolor.PrimaryColor,),
                ],
              ),
            ),
            Divider(height: 30,thickness: 2,)
          ],
        ),
        ),
      )
    );
  }
}
