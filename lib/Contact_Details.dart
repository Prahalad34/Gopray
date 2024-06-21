import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Appcolor.dart';
class Contact_Details extends StatefulWidget {
  const Contact_Details({Key? key}) : super(key: key);

  @override
  State<Contact_Details> createState() => _Contact_DetailsState();
}

class _Contact_DetailsState extends State<Contact_Details> {

  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.PrimaryColor20,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Contact Details',
                style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 30,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Appcolor.PrimaryColor

              ),
              child: Center(child: InkWell(
                onTap: (){
                  contactdetails();
                },
                  child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 15),))),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
    
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Place details',style: TextStyle(fontSize: 20),),
            Text('Provide some information about this place or mosque. If\n this place is added to the app, it will appear publicaly.',style: TextStyle(fontSize: 12),),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child:Text('Website link',style: TextStyle(fontSize: 17),)),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                height: 44,
                // width: 328,
                child:   TextField(
                  controller: websiteController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'http://'
                  ),
                )
            ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child:Text('Facebook',style: TextStyle(fontSize: 17),)),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                height: 44,
                // width: 328,
                child: TextField(
                  controller: facebookController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'http://facebook.com/page'
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child:Text('Email',style: TextStyle(fontSize: 17),)),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                height: 44,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'ingleburn.musallah@gmail.com'
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child:Text('Phone ',style: TextStyle(fontSize: 17),)),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                height: 44,
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: '+61 475656151'
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            )
          ],
        ),
      ),
      )
    );
  }
  Future<void> contactdetails() async {
    if (websiteController.text.isNotEmpty && facebookController.text.isNotEmpty &&
        phoneController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("https://gopray.com.au/wp-prod/wp-admin/admin-ajax.php?action=nearby_mosques&max_results=20&lat=-33.865143&lon=151.2099"),

          body: ({
            'website': websiteController.text,
            'email': emailController.text,
            'phone': phoneController.text,
            'facebook': facebookController.text,
            'language': 'en'
          }));
      if (response.statusCode == 200) {
        print("Correct");
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Home1()));
      } else {
        print("Wronggooooooooooooooooooooooooooo");
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid credentials")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Blank field is not allowed")));
    }
  }
}
