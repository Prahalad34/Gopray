import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Appcolor.dart';
class Addnewprayerplace extends StatefulWidget {
  const Addnewprayerplace({Key? key}) : super(key: key);

  @override
  State<Addnewprayerplace> createState() => _AddnewprayerplaceState();
}

class _AddnewprayerplaceState extends State<Addnewprayerplace> {

  TextEditingController websiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController otherController = TextEditingController();



  final List<String> _animals = ['Fajr','Dhuhr','Asr','Maghrib','Isha'];

  // the selected value
  String? _selectedAnimal;

  final List<String> _time = ['05:00 AM','07:09 AM','12:34 AM','04:21 AM','07:19 AM'];

  // the selected value
  String? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text('Add new prayer place'),
        ),
        leading: Icon(Icons.clear),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Text('Place details',style: TextStyle(fontSize: 20),),
        Text('Provide some information about this place or mosque. If this place is added to the app, it will appear publicaly.',style: TextStyle(fontSize: 13),),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 44,
            // width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Appcolor.PrimaryColor16)
            ),
            child: Center(child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 20,color: Colors.black),))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: 44,
              // width: 330,
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  hintText: 'Address/location within'
                ),
              )
          ),
        ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset('assets/fr7.png'),
                ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: 44,
              // width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black12)
            ),
              child:DropdownButton<String>(
                value: _selectedAnimal,
                onChanged: (value) {
                  setState(() {
                    _selectedAnimal = value;
                  });
                  debugPrint("You selected $_selectedAnimal");
                },
                hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Select Prayer',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.white,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                ),
                isExpanded: true,

                // The list of options
                items: _animals
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ))
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _animals
                    .map((e) => Center(
                  child: Text(
                    e,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ))
                    .toList(),
              ),
          ),
        ),
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
            height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black12)
          ),
            // width: 330,
            child: DropdownButton<String>(
              value: _selectedTime,
              onChanged: (value) {
                setState(() {
                  _selectedTime = value;
                });
                debugPrint("You selected $_selectedTime");
              },
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Set time',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              // Hide the default underline
              underline: Container(),
              // set the color of the dropdown menu
              dropdownColor: Colors.white,
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.black,
                ),
              ),
              isExpanded: true,

              // The list of options
              items: _time
                  .map((e) => DropdownMenuItem(
                value: e,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ))
                  .toList(),

              // Customize the selected item
              selectedItemBuilder: (BuildContext context) => _time
                   .map((e) =>
              Center(
                child: Text(
                  e,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              )
              )
                  .toList(),
            ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('Contact',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
            height: 44,
            // width: 330,
            child: TextField(
              controller: websiteController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  hintText: 'Website',

              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            height: 44,
            // width: 330,
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: '+61 475656151',

              ),
              keyboardType: TextInputType.phone,
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            height: 44,
            // width: 330,
            child: TextField(
              controller: facebookController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'http://facebook.com/page',

              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            height: 44,
            // width: 330,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Mail id',

              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            height: 44,
            // width: 330,
            child: TextField(
              controller: otherController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Other message',

              ),
            )
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Place photos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
      ),
      Text('Add helpful photos here.'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Appcolor.PrimaryColor16)
        ),
        child: Icon(Icons.camera_alt_outlined),
      )
      ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Appcolor.PrimaryColor16)
                ),
                child: Stack(
                  children: [
                    Image.asset('assets/fr8.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 5),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.cancel_outlined,color: Colors.white,size: 20,),
                      ),
                    ),
                  ],
                )
              )
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Appcolor.PrimaryColor16)
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/fr8.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 5),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.cancel_outlined,color: Colors.white,size: 20,),
                        ),
                      ),
                    ],
                  )
              )
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Appcolor.PrimaryColor16)
                  ),
                  child: Stack(
                    children:[
                      Image.asset('assets/fr8.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 5),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.cancel_outlined,color: Colors.white,size: 20,),
                        ),
                      ),
                    ],
                  )
              )
          ),
        ],
      ),
            Padding(
              padding: const EdgeInsets.only(top: 15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 106,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Appcolor.PrimaryColor16)
                    ),
                    child: Center(child: Text('Cancel',style: TextStyle(color: Appcolor.PrimaryColor11),)),
                  ),
                  InkWell(
                    onTap: (){
                      addnewprayer();
                    },
                    child: Container(
                      height: 44,
                      child: ElevatedButton(
                          onPressed: (){
                       showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Column(
                      children: [
                        Image.asset('assets/fr10.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Sent Approval"),
                        ),
                        Text('Your approval for listing Mosque has been\n                       sent Successfully.\n     It will live with in few days Inshallah.',style: TextStyle(fontSize: 12),),
                      ],
                ),
                // content: Text("Saved successfully"),
              );
            },
                      );
                      },
                        child:Text('Send for approval',style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(const Size(180, 40)),
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
            )
        ]
    )
        ),
      )
    );
  }
  Future<void> addnewprayer() async {
    if (websiteController.text.isNotEmpty && facebookController.text.isNotEmpty &&
        phoneController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("https://gopray.com.au/wp-prod/wp-admin/admin-ajax.php?action=nearby_mosques&max_results=20&lat=-33.865143&lon=151.2099"),

          body: ({
            'website': websiteController.text,
            'email': emailController.text,
            'phone': phoneController.text,
            'facebook': facebookController.text,
            'other': otherController,
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
