import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        leading: Icon(Icons.clear),
        title: Text('Select'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 40,right: 260),
            //   child: Stack(
            //     children: [
            //       IconButton(
            //         onPressed: (){
            //           Navigator.pop(context);
            //         },
            //         icon:Icon(Icons.clear,),
            //         //replace with our own icon data.
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 10,left: 35),
            //         child: Text('Select',style: TextStyle(fontSize: 19),),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Sur',
                    prefixIcon: Icon(Icons.search,color: Colors.black,size: 30,)
                ),
              ),
            ),
            Card(
              child: Container(
                height: 124,
                // width: 323,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Appcolor.PrimaryColor4
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Surfers paradise',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('QLD',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor5),),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Surry hills',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('NSW',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor5),),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Surry hills',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('VLC',style: TextStyle(fontSize: 20,color: Appcolor.PrimaryColor5),),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
