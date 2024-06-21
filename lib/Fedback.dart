import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_pray/Appcolor.dart';
class Fedback extends StatefulWidget {
  const Fedback({Key? key}) : super(key: key);

  @override
  State<Fedback> createState() => _FedbackState();
}

class _FedbackState extends State<Fedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 65),
        child: Center(child: Text('Feed back',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
          bottom:  const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(height: 1,thickness: 1,),
          ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Salaam',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              Text('Your review will help us to give you a better experience'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image.asset('assets/Icon.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('General Feedback',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image.asset('assets/Icon.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Features & Suggestions',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Image.asset('assets/Icon.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Technical help',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Center(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Appcolor.PrimaryColor11,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        minLines: 10,
                        maxLines: 20,
                        decoration: const InputDecoration(
                            hintText: 'Enter your feedback here....',
                            contentPadding: EdgeInsets.all(15),
                            border: InputBorder.none),
                        onChanged: (value) {},

                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  height: 44,
                  // width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Appcolor.PrimaryColor11
                  ),
                  child:Center(child: Text("Send Feeback",style: TextStyle(color: Colors.white))),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
