import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Center(child: Text('Report',
            style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1,thickness: 1,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              // width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Appcolor.PrimaryColor16)
              ),
              child:  TextField(
                minLines: 10,
                maxLines: 20,
                decoration: const InputDecoration(
                    hintText: 'text here.',
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text('If this mosque or musallah is no longer open please\n send us an email with further details and we will remove\n this prayer place from Go Pray.',style: TextStyle(fontSize: 12),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Icon(Icons.email_outlined),
                  Text('  goprayfeedback@gmail.com',style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                  height: 44,
                  // width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Appcolor.PrimaryColor11
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Column(
                            children: [
                              Image.asset('assets/fr10.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text("Request sent"),
                              ),
                              Text('Your approval for listing Mosque has been\n                       sent Successfully.\n     It will live with in few days Inshallah.',style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          // content: Text("Saved successfully"),
                        );
                      },
                      );
                    },
                    child:Text('Send',style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(400, 40)),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                        )
                    ),
                  ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
