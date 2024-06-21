import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Athaan_Calculator.dart';
import 'package:go_pray/Fedback.dart';
import 'package:go_pray/Help.dart';
import 'package:go_pray/Legal.dart';
import 'package:go_pray/My_Profile.dart';
import 'package:go_pray/notifi.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _value = false;
  bool _isShown = true;

  void _delete(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: const Text('Log out'),
            content: const Text('Are you sure want to logout?'),
            actions: [
              // The "Yes" button
              CupertinoDialogAction(
                onPressed: () {
                  setState(() {
                    _isShown = false;
                    Navigator.of(context).pop();
                  });
                },
                isDefaultAction: false,
                isDestructiveAction: false,
                child: Container(
                  height: 29,
                    width: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                     border: Border.all(color: Appcolor.PrimaryColor24)
                    ),
                    child: Center(child: const Text('Cancel',style: TextStyle(color:Colors.black ),))),
              ),
              // The "No" button
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                isDefaultAction: true,
                isDestructiveAction: true,
                child: Container(
                    height: 29,
                    width: 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Appcolor.PrimaryColor
                    ),
                    child: Center(child: const Text('Logout',style: TextStyle(color:Colors.white )))),
              )
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Settings",style: TextStyle(fontWeight: FontWeight.w700),)),
    bottom:  const PreferredSize(
    preferredSize: Size.fromHeight(1),
    child: Divider(height: 1,thickness: 1,),
      ),
      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                 height: 48,
                    color: Colors.white,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => My_Profile(),));
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.account_circle_outlined,size: 30,color: Appcolor.PrimaryColor21,),
                          SizedBox(width: 5,),
                          Text('My Profile',
                          style: TextStyle(fontSize: 17),),

            ],
          ),
                    ),
            ) ,
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Athaan_Calculator(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.calculate_outlined,size: 30,color: Appcolor.PrimaryColor21,),
                      SizedBox(width: 5,),
                      Text('Athan Calculator',
                        style: TextStyle(fontSize: 17),),

                    ],
                  ),
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 5),
                child: Text('Info',style: TextStyle(fontSize: 18),),
              ),
              SizedBox(height: 5,),
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Help(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.help_outline,size: 30,color: Appcolor.PrimaryColor21,),
                      SizedBox(width: 5,),
                      Text('Help',
                        style: TextStyle(fontSize: 17),),
                    ],
                  ),
                ),
              ) ,
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => notifi(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.notifications_none,size: 30,color: Appcolor.PrimaryColor21,),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text('Notification',
                          style: TextStyle(fontSize: 17),),
                      ),
                      // SizedBox(width: 150,),
                      Switch(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ) ,
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Fedback(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.feedback_outlined,size: 30,color: Appcolor.PrimaryColor21,),
                      SizedBox(width: 5,),
                      Text('Feedback',
                        style: TextStyle(fontSize: 17),),

                    ],
                  ),
                ),
              ) ,
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Legal(),));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.library_books_outlined,size: 30,color: Appcolor.PrimaryColor21,),
                      SizedBox(width: 5,),
                      Text('Legal',
                        style: TextStyle(fontSize: 17),),

                    ],
                  ),
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 5),
                child: Text('Links',style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 5,),
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.link,size: 30,color: Appcolor.PrimaryColor21,),
                    SizedBox(width: 5,),
                    Text('Go Pray Website',
                      style: TextStyle(fontSize: 17),),

                  ],
                ),
              ) ,
              Divider(height: 1,),
              Container(
                height: 48,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.facebook,size: 30,color: Appcolor.PrimaryColor21,),
                    SizedBox(width: 5,),
                    Text('Facebook',
                      style: TextStyle(fontSize: 17),),

                  ],
                ),
              ) ,
              SizedBox(height: 70,),
              Center(
                child: Container(
                  height: 55,
                  width: 328,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Appcolor.PrimaryColor16)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Image.asset('assets/Logout.png'),
                      // SizedBox(width: 5,),
                      CupertinoButton(
                          onPressed: _isShown == true ? () => _delete(context) : null,
                          child:  Text('Logout',style: TextStyle(color: Appcolor.PrimaryColor9),)),
                    ],
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
