import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_pray/Addnewprayerplace.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Mosque1.dart';
import 'package:go_pray/Mosquedetails.dart';
import 'package:go_pray/notifi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var data =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50,),
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Appcolor.PrimaryColor19,
                                  child:Image.asset('assets/ve.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 55,top: 5),
                                child: Text('Sydney Central...',style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 55,top: 27),
                                child: Text('123 Peaceful Street,..'),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 225),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.search,color: Appcolor.PrimaryColor,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 275,),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => notifi(),));
                                  },
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Appcolor.PrimaryColor19,

                                    child: Icon(Icons.notifications_none),
                                  ),
                                )
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 128,
                            // width: 320,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFF4190DB),
                                image: DecorationImage(
                                    image:  AssetImage('assets/fr5.png',),
                                    fit: BoxFit.cover
                                )
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Image.asset('assets/fr5.png',fit: BoxFit.fill,),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 15,),
                                        Text('Fajr',style: TextStyle(fontSize: 25,color: Colors.white),),
                                        Text('Started at',style: TextStyle(color: Colors.white),),
                                        Row(
                                          children:[
                                        Text('05',style: TextStyle(fontSize: 25,color: Color(0xFFF7D18D)),),
                                            Text(':00 AM',style: TextStyle(fontSize: 25,color: Colors.white),)
                                          ])
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 10),
                                        child: Container(
                                          height: 29,
                                          width: 70,
                                          padding: EdgeInsets.all(3),
                                          decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(color: Colors.white),
                                            color: Appcolor.PrimaryColor
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(Icons.share_outlined,size: 18,color: Colors.white,),
                                              Text('Share',style: TextStyle(color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ),Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 5),
                                        child:SizedBox(height: 75,width: 75,
                                          child: CircleAvatar(
                                            radius: 40,
                                            backgroundColor: Colors.white,
                                            child: Image.asset('assets/watch.png',),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 10),
                          child: Text('Nearby Mosques',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails(),));
                            },
                            child: Container(
                              height: 370,
                              // width: 320,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12)
                              ),
                              child:Column(
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: ListTile(
                                          leading: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Image.asset(imagename[index]),
                                          ),
                                          title: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: InkWell(
                                              // onTap: (){
                                              //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails(),));
                                              // },
                                                child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 14),)),
                                          ),
                                          subtitle: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('2 Km Away from your location'),
                                              Text('Fajr 05:00 AM',style: TextStyle(color:Colors.blueAccent),),
                                              Divider(height: 20,thickness: 1.5,)
                                            ],
                                          ),
                                          trailing: Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                                          ),

                                        ),

                                      );

                                    },),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:MainAxisAlignment.center ,
                                    children: [
                                      Text('More nearby mosques'),
                                      Icon(Icons.keyboard_arrow_down_outlined,size: 20,)
                                    ],
                                  )
                                ],
                              ) ,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Divider(height: 20,thickness: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 132,
                              // width: 320,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFDDC979),
                                  image: DecorationImage(
                                      image:  AssetImage('assets/pray.png',),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Row(
                                children: [
                                  // Image.asset('assets/pray.png',),

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Asr',style: TextStyle(fontSize: 25,color: Colors.white),),
                                          Text('Started at',style: TextStyle(color: Colors.white),),
                                          Row(
                                              children:[
                                                Text('05',style: TextStyle(fontSize: 25,color: Color(0xFF4190DB)),),
                                                Text(':00 AM',style: TextStyle(fontSize: 25,color: Colors.white),)
                                              ])
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 5),
                                        child: Container(
                                          height: 29,
                                          width: 70,
                                          padding: EdgeInsets.all(3),
                                          decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(color: Colors.white),
                                              color: Appcolor.PrimaryColor
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(Icons.share_outlined,size: 18,color: Colors.white,),
                                              Text('Share',style: TextStyle(color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 5),
                                        child:CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: Image.asset('assets/watch.png'),
                                        ),
                                      ),
                                    ],
                                  ),

                              SizedBox(width: 15,)

                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 160),
                          child: Text('Nearby Mosques',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails(),));
                            },
                            child: Container(
                              height: 450,
                              // width: 320,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12)
                              ),
                              child:ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: ListTile(
                                      leading: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Image.network(data[index]["img"],),
                                      ),
                                      title: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          // onTap: (){
                                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails(),));
                                          // },
                                            child: Text(data[index]["name"],style: TextStyle(fontSize: 14),)),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(data[index]["distance"]+' Km Away from your location'),
                                          Text('Fajr 05:00 AM',style: TextStyle(color:Colors.blueAccent),),
                                          Divider(height: 20,thickness: 1.5,)
                                        ],
                                      ),
                                      trailing: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                                      ),

                                    ),

                                  );

                                },) ,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),
        ),

        Positioned(
          bottom: 25,
          right: 15,
          child:  Padding(
          padding: const EdgeInsets.only(top: 40,left: 150),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Addnewprayerplace(),));
            },
            child: Container(
              height: 32,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Add new Mosque',style: TextStyle(color: Colors.black,fontSize: 17),),
                  Icon(Icons.add_location_alt_outlined,color: Colors.blue,)
                ],
              ),
            ),
          ),
        ),)
      ],
    );
  }
  void getData() async {
    var uri = "https://gopray.com.au/wp-prod/wp-admin/admin-ajax.php?action=nearby_mosques&max_results=20&lat=-33.865143&lon=151.2099";
    final response = await http.get(Uri.parse(uri));
    debugPrint("Status code is: ${response.statusCode}");
    debugPrint("Status code is: ${response.statusCode}");

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        debugPrint(jsonData.toString());
         data = jsonData as List;
      });
      debugPrint(data.length.toString());

    // }else{
    //   print('Not Complete');
    }
  }
}
var imagename = ['assets/line1.png','assets/line2.png','assets/line3.png'];
