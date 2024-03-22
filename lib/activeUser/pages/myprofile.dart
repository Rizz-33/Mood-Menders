import 'dart:async';

import 'package:app/activeUser/pages/DataPage.dart';
import 'package:app/activeUser/service/database.dart';
import 'package:app/components/MyTextField.dart';
import 'package:app/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  TextEditingController namecontroller= new TextEditingController();
  TextEditingController agecontroller= new TextEditingController();
  TextEditingController addresscontroller= new TextEditingController();
 


 /* Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);

    setState(() {
      _image = img;
    });
  }*/
  Stream? EmployeeStream;

  getontheload()async{
    EmployeeStream= await DatabaseMethods().getEmployeeDetails();
    setState(() {
      
    });
  }
  @override
  void initState() {
    getontheload();
    super.initState();
  }
  
  Widget allEmployeeDetails() {
    return StreamBuilder(
      stream: EmployeeStream,
      builder: (context, AsyncSnapshot snapshot){
      return snapshot.hasData
      ? ListView.builder(
        itemCount: snapshot.data.docs.length,
        itemBuilder: (context, index){
          DocumentSnapshot ds=snapshot.data.docs[index];
          return 
             Container(
               margin: EdgeInsets.only(bottom: 20.0),
               child: Material(
                         elevation: 5.0,
                         borderRadius: BorderRadius.circular(10),
                         child: Container(
                           padding: EdgeInsets.all(20),
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(ds["Name"], style: TextStyle(color: const Color.fromARGB(255, 70, 66, 68),fontWeight: FontWeight.bold, fontSize: 20),),
                                   GestureDetector(
                                     onTap: (){
                                       namecontroller.text=ds["Name"];
                                       agecontroller.text=ds["Age"];
                                       addresscontroller.text=ds["Address"];
                                       EditEmployeeDetails(ds["Id"]);
                                     },
                                     child: Icon(Icons.edit, color: primaryColor,)),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text("I am "+ds["Age"]+" years old and I reside in ", style: TextStyle(color: const Color.fromARGB(255, 70, 66, 68),),),
                                   Text(ds["Address"]+".", style: TextStyle(color: const Color.fromARGB(255, 70, 66, 68)),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
             );
      })
      : Container();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPage(),));
        },
        backgroundColor: primaryColor, // Change background color
        foregroundColor: Colors.white,
        child: Icon(Icons.add),),

        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,),
                  child: Text(
                    'CHAT',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'lib/images/leaf2.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      titleSpacing: 4.0,
      toolbarHeight: 60,
      toolbarOpacity: 0.9,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(18)),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0.00,
      backgroundColor: const Color.fromARGB(255, 134, 208, 203),
    ),

        
         /* child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
            
                  Center(
                    child: Stack(
                      children: [
                        _image != null
                            ? CircleAvatar(
                                radius: 64,
                                backgroundImage: MemoryImage(_image!),
                              )
                            : const CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmNf7PSvRpbySf-O3h54cG9eKtMNLNBV3G4WFWiTavPw&s'),
                              ),
                        Positioned(
                          child: IconButton(
                            onPressed: selectImage,
                            icon: const Icon(Icons.add_a_photo),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
          */
          body: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Column(
              children: [
                Expanded(child: allEmployeeDetails()),
              ],
            ),
          ),
                  
      ),
      );
  
  }
  
  Future EditEmployeeDetails(String id)=> showDialog(context: context, builder: (context)=> AlertDialog(
    content: Container(
      child: Column(children: [
        Row(children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.cancel),
          ),
          SizedBox(width: 60.0,),
          Text(
            "Edit ",
            style: TextStyle(
              color: primaryColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
           
          ),
           Text(
            "Details",
            style: TextStyle(
              color: primaryColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
           
          ),
        ],),
        SizedBox(height: 20.0,),
        Text("Name", style: TextStyle(color: Colors.black,fontSize: 20.0,),),
        MyTextField(controller: namecontroller, hintText: 'Name', obscureText: false),
        SizedBox(height: 20.0,),

        Text("Age", style: TextStyle(color: Colors.black,fontSize: 20.0,),),
        MyTextField(controller: agecontroller, hintText: 'Age', obscureText: false),
        SizedBox(height: 20.0,),
        Text("Address", style: TextStyle(color: Colors.black,fontSize: 20.0,),),
        MyTextField(controller: addresscontroller, hintText: 'Address', obscureText: false),
        SizedBox(height: 20.0,),
        ElevatedButton(
  onPressed: () async {
    Map<String, dynamic> updateInfo = {
      "Name": namecontroller.text,
      "Age": agecontroller.text,
      "Id": id,
      "Address": addresscontroller.text,
    };
    await DatabaseMethods().updateEmployeeDetails(id, updateInfo).then((value) {
      Navigator.pop(context);
    });
  },
  child: Text("update"),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 134, 208, 203)),
    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 66, 45, 45)),
  ),
),

      ],),
    ),
  ));

}




