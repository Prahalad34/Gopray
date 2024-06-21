import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class notifi extends StatefulWidget {
  const notifi({Key? key}) : super(key: key);

  @override
  State<notifi> createState() => _notifiState();
}

class _notifiState extends State<notifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text('Notification',
            style: TextStyle(fontWeight: FontWeight.bold),),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today',style: TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return
                   Container(
                      margin: EdgeInsets.only(bottom: 15,),
                      height: 76,
                      // width: 328,
                      decoration:  BoxDecoration(
                        //  borderRadius: BorderRadius.circular(8),
                          color: Appcolor.PrimaryColor18,
                          border: Border(left: BorderSide(color: Appcolor.PrimaryColor,width: 5))
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/fr9.png'),
                               title: Text('Iqamah and Jumu ah Time',style: TextStyle(color: Colors.white,fontSize: 13),),
                              subtitle: Text('Jumu ah prayer starting in 30 minutes at [Mosque\n Name]. Join the congregation for Friday prayers.',style: TextStyle(color: Colors.white,fontSize: 6)),
                              trailing: Text('20m',style: TextStyle(color: Colors.white),),
                      ),

                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

var imagename = ['assets/fr9.png'];
var arrname = ['Iqamah and Jumu ah Time'];
var arr1name = ['Jumu ah prayer starting in 30 minutes at [Mosque\n Name]. Join the congregation for Friday prayers.'];
var arr2name = ['20m'];
