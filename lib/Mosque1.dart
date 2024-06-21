import 'package:flutter/material.dart';
import 'package:go_pray/Addnewprayerplace.dart';
import 'package:go_pray/Search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Appcolor.dart';
class Mosque1 extends StatefulWidget {
  const Mosque1({super.key});

  @override
  State<Mosque1> createState() => _Mosque1State();
}

class _Mosque1State extends State<Mosque1> {
  var data =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Mosque')),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Divider(height: 1,),

      Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Stack(
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
                padding: const EdgeInsets.only(left: 55),
                child: Text('Sydney Central...',style: TextStyle(fontSize: 16,color: Appcolor.PrimaryColor18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55,top: 25),
                child: Text('123 Peaceful Street,..',style: TextStyle(color: Appcolor.PrimaryColor18)),
              ),Padding(
                padding: const EdgeInsets.only(left: 260),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
                      },
                      child: Icon(Icons.search,color: Colors.blue,size: 22,)),
                ),
              ),
              ],
            ),
      ),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: data.length,
                  itemBuilder: (context, index) {
                    return
                       Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 117,
                      // width: 348,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,

                        border:Border.all(
                            width: 1,
                            color: Colors.white
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 114,
                            width: 108,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft:Radius.circular(12)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image:   NetworkImage(data[index]["img"]),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(width: 6,),
                             Expanded(
                               child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Image.network(data[index]["img"],fit: BoxFit.cover,),
                                  Text(data[index]["name"],style: TextStyle(fontSize:13,fontWeight: FontWeight.w700),),
                                  Text('on the southern part of the Temple\n Mount or Haram al-Sharif',style: TextStyle(fontSize: 12)),
                                  SizedBox(height: 3,),
                                  Text(data[index]["distance"]+'Km Away from your location',style: TextStyle(fontSize: 14),),
                                  Text('Fajr 05:00 PM',style: TextStyle(color: Colors.blue),)
                                ],
                            ),
                             ),
                          // ),

                        ],
                      ),
                    );
                  // );

                  },),
             
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Addnewprayerplace(),));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Container(
                    height: 32,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
              )
      ]
      ),
        ),
      )
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
var imagename = ['assets/fr1.png','assets/fr2.png','assets/fr4.png','assets/fr4.png'];
var name = ['Al- Aqsa Mosque, Jerusalem','Auburn Gallipoli Mosque','Al- Aqsa Mosque, Jerusalem','Al- Aqsa Mosque, Jerusalem'];
var textname = ['on the southern part of the Temple\n Mount or Haram al-Sharif'];
var name1 = ['2 Km Away from your location'];
var name2 =['Fajr 05:00 PM',];