
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Mapview.dart';
import 'package:go_pray/Mosque_Update.dart';

import 'Mosquedetails1.dart';
import 'Mosquedetails2.dart';
class Mosquedetails extends StatefulWidget {
  const Mosquedetails({super.key});

  @override
  State<Mosquedetails> createState() => _MosquedetailsState();
}

class _MosquedetailsState extends State<Mosquedetails> {

  int isActive = 0;

  int selectedTool = 0;

  bool _OVERVIEWSelected = false;
  bool _PRAYERTIMESelected = false;
  bool _FacilitySelected = false;

  bool isValue = false;

   int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Mosque Details',style: TextStyle(fontWeight: FontWeight.w700),),
          titleSpacing: -6,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Stack(
                children: [
                 ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.white,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/fr6.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/fr6.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/fr6.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],

                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  autoPlayInterval: 3000,

                  isLoop: true,
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor),),
              ),
              Text('on the southern part of the Temple Mount or Haram al-Sharif on the southern part of the Temple Mount or Haram al-Sharif on the southern part of the Temple Mount or Haram al-Sharif',style: TextStyle(fontSize:14 ),),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text('4.2 KM Away form your '),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mapview(),));
                        },
                        child: Text('Current location',style: TextStyle(color: Appcolor.PrimaryColor),)),
                  ],
                ),
              ),
              Divider(height: 30,thickness: 3,),
              Padding(
                padding: const EdgeInsets.only(left: 13,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState((){
                          isActive = 0;
                           _OVERVIEWSelected = true;
                           _PRAYERTIMESelected = false;
                           _FacilitySelected = false;
                        });

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              Icon(Icons.clear_all,color:_OVERVIEWSelected ? Appcolor.PrimaryColor :Colors.black ,size: 25,),
                              Text('OVERVIEW',style: TextStyle(color: _OVERVIEWSelected ? Appcolor.PrimaryColor :Colors.black ),),
                            ],
                          ),

                      ),
                    ),
                    InkWell(
                        onTap: (){
                          setState((){
                            isActive = 1;
                            _OVERVIEWSelected = false;
                            _PRAYERTIMESelected = true;
                            _FacilitySelected = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              Icon(Icons.access_time_sharp,size: 25,color: _PRAYERTIMESelected? Appcolor.PrimaryColor :Colors.black ,),
                              Text('PRAYER TIME',style: TextStyle(color: _PRAYERTIMESelected? Appcolor.PrimaryColor :Colors.black),),
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: InkWell(
                          onTap: (){
                            setState((){
                              isActive = 2;
                              _OVERVIEWSelected = false;
                              _PRAYERTIMESelected = false;
                              _FacilitySelected = true;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.info_outline,size: 25,color: _FacilitySelected? Appcolor.PrimaryColor :Colors.black,),
                              Text('Facility',style: TextStyle(color: _FacilitySelected? Appcolor.PrimaryColor :Colors.black),),
                            ],
                          )),
                    ),
                  ],
                ),
              ),

              Divider(height: 30,thickness: 1,),
              ListTile(
                  leading: Icon(Icons.share_location,color: Appcolor.PrimaryColor,size: 30,),
                subtitle: Text('Al- Aqsa Mosque, Jerusalem on the southern part of the Temple Mount',style: TextStyle(fontSize: 12),),
                trailing: Image.asset('assets/map.png',),
              ),
              Divider(height: 30,thickness: 1,),

              isActive == 0 ?
              overView()
                  : isActive == 1 ?
                  prayerTime()
                  : facility()

            ]
              ),
        )
    )
    );
  }

  Widget overView()=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Website link'),
    Text('http://xyz.com',style: TextStyle(fontWeight: FontWeight.w700),),
    Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text('Contact'),
    ),
    Text('+61 514514851',style: TextStyle(fontWeight: FontWeight.w700),)
  ],);

  Widget prayerTime()=> Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Prayer time',style: TextStyle(fontWeight: FontWeight.bold)),
    Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Center(child: Text('31/01/2024 (Tomorrow)')),
    ),
    Center(child: Text('Iqamah Times',style: TextStyle(color: Appcolor.PrimaryColor8),)),
SizedBox(height: 25,),
    Container(
      height: 260,
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
                margin: EdgeInsets.only(bottom: 15,left: 10,right: 10),
                child:  Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(imagename[index]),
                    SizedBox(width: 15,),
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


  ],);

  Widget facility()=> Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Facilities',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(fontSize: 12),),
    Divider(height: 30,thickness: 1,),
    Text('Womens Area',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(fontSize: 12),),
    Divider(height: 30,thickness: 1,),
  ],);

}


var imagename = ['assets/star.png','assets/star1.png','assets/star2.png','assets/star3.png','assets/star4.png'];
var arrname = ['Fajr','Dhuhr','Asr','Maghrib','Isha'];
var arr1name = [    '05:00 AM','07:09 AM','12:34 AM','(6 mins after) 04:21 AM','07:19 AM'];

