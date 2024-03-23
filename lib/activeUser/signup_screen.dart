
// import 'package:app/activeUser/pages/mainpage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passController = TextEditingController();

//   String _email = "";
//   String _password = "";
//   void _handleSignUp() async{
//     try{
//       UserCredential userCredential =
//       await _auth.createUserWithEmailAndPassword(
//         email: _email,
//         password: _password
//         );
//         print("User Registered: ${userCredential.user!.email}");
//     }catch(e){
//       print("Error During Registration: $e");
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 92, 89, 89),
//       appBar: AppBar(
//         title: const Center(child: Text("MOOD MENDERS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
//         flexibleSpace: Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(),
//                   image: DecorationImage(
//                     image: AssetImage("assets/design.jpg"),
//                     fit: BoxFit.cover,
//                   )
//                 ),
//               ),
//       ),
//       body: Center(
//         child: Padding(
//           padding:const EdgeInsets.all(16),
          
//           child: Form(
//             key: _formkey,
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 96, 125, 139),
//                   borderRadius: BorderRadius.circular(8),
//                   ),
                
//                 child: const Center(
//                   child: Text(
//                   '"HI EVERYONE!"',
//                   style: TextStyle(
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: AutofillHints.streetAddressLevel2,
//                     fontStyle: FontStyle.italic,
//                     letterSpacing: 1.5,
//                     color: Color.fromARGB(255, 8, 18, 27),
//                   ),
//                           ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 12,
//             ),

//                 const Padding(
//                   padding: EdgeInsets.all(0),
//                   child: Card(
                  
//                       child: Image(
//                               image: AssetImage('assets/welcome2.jpg'),
//                                ),
                    
                   
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                  TextFormField(
//                    controller: _emailController,
//                    keyboardType: TextInputType.emailAddress,
//                    decoration: const InputDecoration(
//                     border: OutlineInputBorder(), 
//                      labelText: "Email",
//                    ),
//                    validator: (value) {
//                      if(value == null || value.isEmpty){
//                        return "Please enter your Email";
//                      }
//                      return null;
//                    },
//                    onChanged: (value) {
//                      setState(() {
//                        _email = value;
//                      });
//                    },
//                  ),
//                  const SizedBox(height: 20,),
//                       TextFormField(
//                    controller: _passController,
//                    obscureText: true,
//                    decoration: const InputDecoration(
//                      border: OutlineInputBorder(),
//                      labelText: "Password",
//                    ),
//                    validator: (value) {
//                      if(value == null || value.isEmpty){
//                        return "Please enter your Password";
//                      }
//                      return null;
//                    },
//                    onChanged: (value) {
//                      setState(() {
//                        _password = value;
//                      });
//                    },
//                  ),
//                  const SizedBox(height: 20,),
//                  ElevatedButton(onPressed: (){
//                    if(_formkey.currentState!.validate()){
//                      _handleSignUp();
//                      Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const mainpage()), 
//                 );
//                    }
//                  },
//                   child: const Text("Sign Up"),
//                   ),
//               ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
    
//   }
// }