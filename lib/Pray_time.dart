import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Mosque_Update.dart';
class Pray_time extends StatefulWidget {
  const Pray_time({Key? key}) : super(key: key);

  @override
  State<Pray_time> createState() => _Pray_timeState();
}

class _Pray_timeState extends State<Pray_time> {

  int selectedIndex=0;
  int selectedIndex1=0;
  int selectedIndex2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(20),
          child: Column(
    // crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Stack(
                   children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
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
                  padding: const EdgeInsets.only(left: 55,top: 26),
                   child: Text('123 Peaceful Street,..'),
                 ),Padding(
               padding: const EdgeInsets.only(left: 260,top: 5),
                child: CircleAvatar(
                radius: 22,
                 backgroundColor: Colors.white,
                 child: Icon(Icons.search,color: Appcolor.PrimaryColor,),
             ),
               ),
          ],
        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Center(
                          child: Card(
                            child: Container(
                              height: 420,
                              // width: 328,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Appcolor.PrimaryColor6
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('31/01/2024 (Today)'),
                                  ),
                                  Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor8),),
                                  Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor7),),
                                  SizedBox(height: 25,),
                                  Container(
                                    height: 300,
                                    // width: 312,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Appcolor.PrimaryColor6
                                    ),
                                    child: Container(
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: (){
                                              setState((){
                                                selectedIndex = index;
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: selectedIndex == index ? Appcolor.PrimaryColor23 : null,
                                                  border: Border.all(color: selectedIndex == index ? Appcolor.PrimaryColor22 : Colors.white)
                                              ),
                                              margin: EdgeInsets.only(bottom: 25,left: 10,right: 10),
                                              child:  Row(
                                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Image.asset(imagename[index]),
                                                  SizedBox(width: 10,),
                                                  Expanded(

                                                    child: Text(arrname[index]),

                                                  ),
                                                  Text(arr1name[index]),
                                                ],
                                              ),
                                            ),
                                          );

                                        },),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Mosque_Update(),));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Update prayer time'),
                                Icon(Icons.arrow_forward_ios,size: 12,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                 Divider(height: 30,thickness: 2,),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
                children: [
                  Center(
                    child: Card(
                      child: Container(
                        height: 420,
                        // width: 328,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Appcolor.PrimaryColor7
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('31/01/2024 (Today)'),
                            ),
                            Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor8),),
                            Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor7),),
                            SizedBox(height: 25,),
                            Container(
                              height: 300,
                              // width: 312,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Appcolor.PrimaryColor6
                              ),
                              child: Container(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: (){
                                        setState((){
                                          selectedIndex1 = index;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: selectedIndex1 == index ? Appcolor.PrimaryColor23 : null,
                                            border: Border.all(color: selectedIndex1 == index ? Appcolor.PrimaryColor22 : Colors.white)
                                        ),
                                        margin: EdgeInsets.only(bottom: 25,left: 10,right: 10),
                                        child:  Row(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(imagename[index]),
                                            SizedBox(width: 10,),
                                            Expanded(

                                              child: Text(arrname[index]),

                                            ),
                                            Text(arr1name[index]),
                                          ],
                                        ),
                                      ),
                                    );

                                  },),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 30,thickness: 2,),
            Column(
                children: [
            Center(
            child: Container(
            height: 420,
                // width: 328,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.PrimaryColor7
                ),
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('31/01/2024 (Today)'),
                      ),
                      Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor8),),
                      Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor7),),
                      SizedBox(height: 25,),
                      Container(
                        height: 300,
                        // width: 312,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolor.PrimaryColor6
                        ),
                        child: Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: (){
                                  setState((){
                                    selectedIndex2 = index;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: selectedIndex2 == index ? Appcolor.PrimaryColor23 : null,
                                      border: Border.all(color: selectedIndex2 == index ? Appcolor.PrimaryColor22 : Colors.white)
                                  ),
                                  margin: EdgeInsets.only(bottom: 25,left: 10,right: 10),
                                  child:  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(iconname[index]),
                                      SizedBox(width: 10,),
                                      Expanded(

                                        child: Text(arrname[index]),

                                      ),
                                      Text(arr1name[index]),
                                    ],
                                  ),
                                ),
                              );

                            },),
                        ),
                      ),
        ]
      )
            )
            )
            ]
    )
            ]
    ),
          )
            ]
    )
      )
    )
      )
    );
  }
}
var imagename = ['assets/star.png','assets/star1.png','assets/star2.png','assets/star3.png','assets/star4.png'];
var arrname = ['Fajr','Dhuhr','Asr','Maghrib','Isha'];
var arr1name = ['05:00 AM','07:09 AM','12:34 AM',' 04:21 AM','07:19 AM'];
var iconname =[Icons.access_time,Icons.access_time,Icons.access_time,Icons.access_time,Icons.access_time];
