import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';

import 'Mosque_Update.dart';
class Mosquedetails1 extends StatefulWidget {
  const Mosquedetails1({super.key});

  @override
  State<Mosquedetails1> createState() => _Mosquedetails1State();
}

class _Mosquedetails1State extends State<Mosquedetails1> {
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
                                child: Icon(Icons.access_time_sharp,color:Appcolor.PrimaryColor,size: 25,),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: InkWell(
                                // onTap: (){
                                //   Navigator.push(context, MaterialPageRoute(builder: (context) => Mosquedetails2(),));
                                // },
                                child: Icon(Icons.info_outline,size: 25,)),
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
                          Text('PRAYER TIME',style: TextStyle(color: Appcolor.PrimaryColor),),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text('Facility',style: TextStyle(),),
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

                    Text('Prayer time'),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Center(child: Text('31/01/2024 (Tomorrow)')),
                    ),
                    Center(child: Text('Iqamah Times',style: TextStyle(color: Colors.indigo),)),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 334,
                        // width: 312,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                            color: Appcolor.PrimaryColor23,
                            border: Border.all(color: Appcolor.PrimaryColor22)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/star.png'),
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text('Fajr'),
                              ),
                              Text('05:00 AM'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 25,top: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/star1.png'),
                          Padding(
                            padding: const EdgeInsets.only(right: 140),
                            child: Text('Dhuhr'),
                          ),
                          Text('07:09 AM'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 25,top: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/star2.png'),
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Text('Asr'),
                          ),
                          Text('12:34 AM'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20,top: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/star3.png'),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Text('Maghrib'),
                          ),
                          Text('(6 mins after) 04:21 AM'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 25,top: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/star4.png'),
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Text('Isha'),
                          ),
                          Text('07:19 AM'),
                        ],
                      ),
                    ),
                    Divider(height: 20,thickness: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          height: 30,
                          // width: 312,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:Appcolor.PrimaryColor13
                          ),
                          child: Row(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    height: 18,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.greenAccent.shade100)
                                    ),
                                    child: Center(child: Text('Update time',style: TextStyle(color:Appcolor.PrimaryColor14,fontSize: 10),)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Last verified a days ago.',style: TextStyle(color: Appcolor.PrimaryColor14),),
                              )
                            ],
                          ),
                        ),
                      ),
                    )

                  ]
              ),
            )
        )
    );
  }
}
var imagename = ['assets/star1.png','assets/star2.png','assets/star3.png','assets/star4.png'];
var arrname = ['Dhuhr','Asr','Maghrib','Isha'];
var arr1name = ['07:09 AM','12:34 AM','(6 mins after) 04:21 AM','07:19 AM'];
