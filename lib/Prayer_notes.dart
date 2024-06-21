import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Prayer_notes extends StatefulWidget {
  const Prayer_notes({Key? key}) : super(key: key);

  @override
  State<Prayer_notes> createState() => _Prayer_notesState();
}

class _Prayer_notesState extends State<Prayer_notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text('Prayer notes',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        leading: Icon(Icons.arrow_back),
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
                padding: const EdgeInsets.only(),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Jumu’ah Notes',style: TextStyle(fontSize: 17),)),
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
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Appcolor.PrimaryColor16),
                      ),
                      child: Center(child: Text('Cancel')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 32,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                           color: Appcolor.PrimaryColor
                        ),
                        child: Center(child: Text('Save',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    height: 30,
                    width: 360,
                    color: Appcolor.PrimaryColor12,
                    child: Text('Tarawih prayers',style: TextStyle(fontSize: 17),)),
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
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                ),
                    ),
                // ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Appcolor.PrimaryColor16),
                      ),
                      child: Center(child: Text('Cancel')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 32,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Appcolor.PrimaryColor
                        ),
                        child: Center(child: Text('Save',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
