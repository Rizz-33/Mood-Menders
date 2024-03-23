import 'package:app/activeUser/service/database.dart';
import 'package:app/components/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_string/random_string.dart';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Let's chat with an active user!",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline6,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
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
            bottomLeft: Radius.circular(18),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(controller: namecontroller, hintText: 'Name', obscureText: false),
              SizedBox(height: 24.0),
              MyTextField(controller: agecontroller, hintText: 'Age', obscureText: false),
              SizedBox(height: 24.0),
              MyTextField(controller: addresscontroller, hintText: 'Address', obscureText: false),
              SizedBox(height: 30.0),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    String id = randomAlphaNumeric(10);
                    Map<String, dynamic> employeeInfoMap = {
                      "Name": namecontroller.text,
                      "Age": agecontroller.text,
                      "Id": id,
                      "Address": addresscontroller.text,
                    };
                    await DatabaseMethods().addEmployeeDetails(employeeInfoMap, id).then((value) {
                      Fluttertoast.showToast(
                        msg: "Details added successfully",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 134, 208, 203)),
                    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 66, 45, 45)),
                  ),
                  child: Text("Add"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
