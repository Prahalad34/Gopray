import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Center(child: Text('Help',
            style: TextStyle(fontWeight: FontWeight.bold),)),
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
              Text('Last updated on 5/12/2022'),
              Divider(height: 25,thickness: 2,),
              Text('Clause 1',style: TextStyle(fontSize: 25,color: Colors.black),),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',style: TextStyle(fontSize: 15),),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Clause 2',style: TextStyle(fontSize: 25,color: Colors.black),),
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',style: TextStyle(fontSize: 15))

            ],
          ),
        ),
      ),
    );
  }
}
