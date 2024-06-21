import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Location',
                style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 30,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Appcolor.PrimaryColor

              ),
              child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 15),)),
            )
          ],
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Address',style: TextStyle(fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                    height: 134,
                    // width: 328,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Appcolor.PrimaryColor16)
                    ),
                    child: TextField(
                      minLines: 10,
                      maxLines: 20,
                      decoration: const InputDecoration(
                          hintText: 'ex.',
                          contentPadding: EdgeInsets.all(5),
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Location Help',style: TextStyle(fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                    height: 134,
                    // width: 328,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Appcolor.PrimaryColor16)
                    ),
                    child:  TextField(
                  minLines: 10,
                  maxLines: 20,
                  decoration: const InputDecoration(
                      hintText: 'ex.',
                      contentPadding: EdgeInsets.all(5),
                      border: InputBorder.none),
                  onChanged: (value) {},
                ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
