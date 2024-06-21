import 'package:flutter/material.dart';

import 'Appcolor.dart';
import 'Mosque_Update.dart';
class Mosquedetails2 extends StatefulWidget {
  const Mosquedetails2({super.key});

  @override
  State<Mosquedetails2> createState() => _Mosquedetails2State();
}

class _Mosquedetails2State extends State<Mosquedetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: -8,
          title:  Text('Mosque Details'),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        children :[
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              height: 179,
                              // width: 328,
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image:  AssetImage('assets/fr6.png',),
                                      fit: BoxFit.cover
                                  )
                              ) ,
                              // child: Image.asset('assets/fr6.png',fit: BoxFit.cover,)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 270,top: 130),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mosque_Update(),));
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white
                                ),
                                child: Icon(Icons.create_outlined,color: Appcolor.PrimaryColor,),
                              ),
                            ),
                          )

                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor),),
                    ),
                    Text('on the southern part of the Temple Mount or Haram al-\nSharif on the southern part of the Temple Mount or\n Haram al-Sharif on the southern part of the Temple\n Mount or Haram al-Sharif',style: TextStyle(fontSize:12 ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Text('4.2 KM Away form your '),
                          InkWell(
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mapview(),));
                            // },
                              child: Text('Current location',style: TextStyle(color: Appcolor.PrimaryColor),)),
                        ],
                      ),
                    ),
                    Divider(height: 30,thickness: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 23,right: 23),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Icon(Icons.clear_all,),
                          ),
                          InkWell(
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails1(),));
                            // },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Icon(Icons.access_time_sharp,),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: InkWell(
                              // onTap: (){
                              //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails2(),));
                              // },
                                child: Icon(Icons.info_outline,color:Appcolor.PrimaryColor,size: 25)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('OVERVIEW',style: TextStyle(),),
                          Text('PRAYER TIME',style: TextStyle(),),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text('Facility',style: TextStyle(color: Appcolor.PrimaryColor),),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 30,thickness: 1,),
                    ListTile(
                      leading: Icon(Icons.share_location,color: Appcolor.PrimaryColor,size: 30,),
                      subtitle: Text('Al- Aqsa Mosque, Jerusalem on the southern part of the Temple Mount',style: TextStyle(fontSize: 14)),
                      trailing: Image.asset('assets/map.png',),
                    ),
                    Divider(height: 30,thickness: 1,),
                    Text('Facilities',style: TextStyle(fontSize: 20),),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
                    Divider(height: 30,thickness: 1,),
                    Text('Womens Area',style: TextStyle(fontSize: 20),),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
                    Divider(height: 30,thickness: 1,),

                  ]
              ),
            )
        )

    );
  }
}

